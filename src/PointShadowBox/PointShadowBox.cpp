#include "PointShadowBox.h"

PointShadowBox::PointShadowBox(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "PointShadowBox";
    
//    ofSetBackgroundColor(100);
    ofEnableDepthTest();
    //    ofDisableArbTex();
    
    glEnable(GL_DEPTH_TEST);
    
    depthShader.load("PointShadowBox/depth.vert", "PointShadowBox/depth.frag", "PointShadowBox/depth.geom.glsl");
    mainShader.load("PointShadowBox/main.vert", "PointShadowBox/main.frag");
    
    far_plane = 120.;
    
    room.setPosition(0, 0, 0);
    room.set(100.);
    room.enableColors();
    ofFloatColor color(ofRandomf(), ofRandomf(), ofRandomf());
    ofLogNotice() << color;
    for (int j = 0; j < 6; j++) room.setSideColor(j, color);
    
    cam_mode = false;
    
    
    
    //    glGenFramebuffers(1, &glDepthMapFbo);
    //
    //    glGenTextures(1, &depthCubeMap);
    //
    //    glBindTexture(GL_TEXTURE_CUBE_MAP, depthCubeMap);
    //    for (unsigned int i = 0; i < 6; ++i) {
    //        // 各面のテクスチャを深度テクスチャで生成
    //        glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_DEPTH_COMPONENT, SHADOW_WIDTH, SHADOW_HEIGHT, 0, GL_DEPTH_COMPONENT, GL_FLOAT, NULL);
    //    }
    //
    //    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    //    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    //    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    //    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    //    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    //
    ////    ofFboSettings depth_fbo_settings;
    ////    depth_fbo_settings.depthStencilAsTexture = true;
    ////    depth_fbo_settings.width = SHADOW_WIDTH;
    ////    depth_fbo_settings.height = SHADOW_HEIGHT;
    ////    depth_fbo_settings.numColorbuffers = 6;
    ////    depth_fbo_settings.useDepth = true;
    //
    //
    ////    depthMapFbo.attach
    //    glEnable(GL_CULL_FACE);
    //    glEnable(GL_DEPTH_TEST);
    //
    //    // depth fbo
    ////    depthMapFbo.allocate(depth_fbo_settings);
    //    glBindFramebuffer(GL_FRAMEBUFFER, glDepthMapFbo);
    ////    depthMapFbo.begin();
    //    // geometryShaderを使うから1パスの描画で済む
    //    glFramebufferTexture(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, depthCubeMap, 0);
    //    // 明示的にカラーバッファには描画しないことをOpenGLに伝える
    //    glDrawBuffer(GL_NONE);
    //    glReadBuffer(GL_NONE);
    ////    depthMapFbo.end();
    //    glBindFramebuffer(GL_FRAMEBUFFER,0);
    
    const unsigned int SHADOW_WIDTH = 1024, SHADOW_HEIGHT = 1024;
    
    glGenFramebuffers(1, &glDepthMapFbo);
    // create depth cubemap texture
    
    glGenTextures(1, &depthCubeMap);
    glBindTexture(GL_TEXTURE_CUBE_MAP, depthCubeMap);
    for (unsigned int i = 0; i < 6; ++i)
        glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_DEPTH_COMPONENT, SHADOW_WIDTH, SHADOW_HEIGHT, 0, GL_DEPTH_COMPONENT, GL_FLOAT, NULL);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    // attach depth texture as FBO's depth buffer
    glBindFramebuffer(GL_FRAMEBUFFER, glDepthMapFbo);
    glFramebufferTexture(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, depthCubeMap, 0);
    glDrawBuffer(GL_NONE);
    glReadBuffer(GL_NONE);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    
    //
    for (int i = 0; i < 30; i++) {
        ofBoxPrimitive box;
        box.setPosition(ofRandom(-20, 20),ofRandom(-20, 20), ofRandom(-20, 20));
        box.set(ofRandom(4), ofRandom(4), ofRandom(4));
        box.enableColors();
        ofFloatColor color(ofRandomf(), ofRandomf(), ofRandomf());
        for (int j = 0; j < 6; j++) box.setSideColor(j, color);
        boxes.push_back(box);
        
        
        box_transform_dirs.push_back(axis[(int)ofRandom(6)] * ofRandom(30.));
    }
    
    cam.setFarClip(1000.);
    cam.setNearClip(0.01);
    cam.setPosition(0,30,30);
    
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
    initOsc();
}

void PointShadowBox::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/room_color", [&](const glm::vec3 g_color) {
        for (int j = 0; j < 6; j++) room.setSideColor(j, ofFloatColor(g_color.r, g_color.g, g_color.b));
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/update_box_move", [&]() {
        for (int i = 0; i < boxes.size(); i++) {
            //            boxes[i].move(box_transform_dirs[i]);
            box_transform_dirs[i] = axis[(int)ofRandom(6)] * ofRandom(30.);
        }
        beforeCamPos = cam.getPosition();
        moveCamDir = glm::vec3(ofRandom(-40, 40), ofRandom(-40, 40), ofRandom(-40, 40)) - beforeCamPos;
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/change_boxes", [&]() {
        boxes.clear();
        
        for (int i = 0; i < 30; i++) {
            ofBoxPrimitive box;
            box.setPosition(ofRandom(-20, 20),ofRandom(-20, 20), ofRandom(-20, 20));
            box.set(ofRandom(4), ofRandom(4), ofRandom(4));
            box.enableColors();
            ofFloatColor color(ofRandomf(), ofRandomf(), ofRandomf());
            for (int j = 0; j < 6; j++) box.setSideColor(j, color);
            boxes.push_back(box);
            
            box_transform_dirs.push_back(axis[(int)ofRandom(6)] * ofRandom(30.));
        };
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/update_cam_dir", [&]() {
        moveCamDir = glm::vec3(ofRandom(-40, 40), ofRandom(-40, 40), ofRandom(-40, 40)) - beforeCamPos;
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/cam/position", [=](const glm::vec3 pos) {
        if (!cam_mode) {
            cam.setPosition(pos);
            cam.lookAt(lookat);
        }
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/cam/updir", [=](const glm::vec3 updir) {
        //        cam.setPosition(pos);
        cam.lookAt(lookat+cam.getPosition());
        cam.setOrientation(updir);
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat+cam.getPosition());
    });
    
    ofxSubscribeOsc(OF_PORT, "/point_shadow_box/cam/mode", cam_mode);
}

void PointShadowBox::setup() {
    
}

void PointShadowBox::update() {
    // ライト用の変換行
    shadowProj = glm::perspective(glm::radians(90.0f), (float)SHADOW_WIDTH / (float)SHADOW_HEIGHT, 0.1f, far_plane);
    
    shadowTransforms.clear();
    shadowTransforms.push_back(shadowProj * glm::lookAt(lightPos, lightPos + glm::vec3(1.,0.,0.), glm::vec3(0.,-1.,0.)));
    shadowTransforms.push_back(shadowProj * glm::lookAt(lightPos, lightPos + glm::vec3(-1.,0.,0.), glm::vec3(0.,-1.,0.)));
    shadowTransforms.push_back(shadowProj * glm::lookAt(lightPos, lightPos + glm::vec3(0.,1.,0.), glm::vec3(0.,0.,1.)));
    shadowTransforms.push_back(shadowProj * glm::lookAt(lightPos, lightPos + glm::vec3(0.,-1.,0.), glm::vec3(0.,0.,-1.)));
    shadowTransforms.push_back(shadowProj * glm::lookAt(lightPos, lightPos + glm::vec3(0.,0.,1.), glm::vec3(0.,-1.,0.)));
    shadowTransforms.push_back(shadowProj * glm::lookAt(lightPos, lightPos + glm::vec3(0.,0.,-1.), glm::vec3(0.,-1.,0.)));
    
    int n = ofGetFrameNum() % one_loop;
}

void PointShadowBox::draw() {
    ofEnableDepthTest();
    glViewport(0,0, SHADOW_WIDTH, SHADOW_HEIGHT); //fbo.begin()の中で内部的に呼ばれる
    glBindFramebuffer(GL_FRAMEBUFFER, glDepthMapFbo);
    glClear(GL_DEPTH_BUFFER_BIT);
    //    depthMapFbo.begin();
    
    depthShader.begin();
    //    glClear(GL_DEPTH_BUFFER_BIT);
    
    depthShader.setUniformMatrix4f("shadowMatrices", shadowTransforms[0], 6);
    //    for (int i = 0; i < 6; i++) depthShader.setUniformMatrix4f("shadowMatrices[" +ofToString(i) + "]" , shadowTransforms[i]);
    
    depthShader.setUniform1f("far_plane", far_plane);
    depthShader.setUniform3f("lightPos", lightPos);
    //
    ofSetColor(255);
    
    glEnable(GL_CULL_FACE);
    
    float n = easeInOut((ofGetFrameNum() % one_loop) / (float)one_loop);
    
    if (cam_mode) {
        cam.setPosition(beforeCamPos + moveCamDir * n);
    }
    //    lightPos = glm::rotate(glm::vec3(0,1,0), 90.f, beforeCamPos + moveCamDir * n);
    cam.lookAt(glm::vec3(0));
    
    
    for (int i = 0; i < boxes.size(); i++) {
        depthShader.setUniformMatrix4f("model", glm::translate(boxes[i].getGlobalTransformMatrix(), box_transform_dirs[i] * n));
        
        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_CUBE_MAP, depthCubeMap);
        
        boxes[i].draw();
    }
    
    ofSetColor(255);
    glDisable(GL_CULL_FACE);
    
    mainShader.setUniformMatrix4f("model", room.getGlobalTransformMatrix());
    room.draw();
    
    depthShader.end();
    //    depthMapFbo.end();
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    
    
    begin();
    ofClear(0);
    
    // render pass
    mainShader.begin();
    cam.begin();
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_CUBE_MAP, glDepthMapFbo);
    
    //    mainShader.setUniformTexture("depthCubeMap", GL_TEXTURE_CUBE_MAP, depthCubeMap, 0);
    mainShader.setUniform1i("depthCubeMap", 0);
    mainShader.setUniform3f("lightPos", lightPos);
    mainShader.setUniform3f("viewPos", cam.getPosition());
    mainShader.setUniform1f("far_plane", far_plane);
    mainShader.setUniformMatrix4f("projection", cam.getProjectionMatrix());
    mainShader.setUniformMatrix4f("view", cam.getModelViewMatrix());
    mainShader.setUniform1i("reverse_normals", false);
    ofSetColor(255);
    glEnable(GL_CULL_FACE);
    glFrontFace(GL_CW);
    
    
    for (int i = 0; i < boxes.size(); i++) {
        mainShader.setUniformMatrix4f("model", glm::translate(boxes[i].getGlobalTransformMatrix(), box_transform_dirs[i] * n));
        boxes[i].draw();
    }
    
    
    ofSetColor(255,255);
    glDisable(GL_CULL_FACE);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_CUBE_MAP, depthCubeMap);
    mainShader.setUniform1i("reverse_normals", true);
    mainShader.setUniformMatrix4f("model", room.getGlobalTransformMatrix());
    room.draw();
    
    cam.end();
    mainShader.end();
    end();
    
    ofDisableDepthTest();
}

void PointShadowBox::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    getFbo()->allocate(size.x, size.y, GL_RGBA);
}
