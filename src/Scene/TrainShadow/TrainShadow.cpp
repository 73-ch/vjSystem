#include "TrainShadow.h"

TrainShadow::TrainShadow(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "TrainShadow";
    ofSetCircleResolution(24);
    
    // of & gl init
    ofSetVerticalSync(false);
    ofEnableBlendMode(OF_BLENDMODE_ALPHA);
    ofEnableDepthTest();
    glDepthFunc(GL_LEQUAL);
    glEnable(GL_CULL_FACE);
    GLint textureUnits = 0;
    glGetIntegerv(GL_MAX_TEXTURE_IMAGE_UNITS, &textureUnits);
    //    cout << "texture units " + ofToString(  cntextureUnits) << endl;
    light_max = textureUnits;
    //
    
    // depth fbo
    float length = 1024;
    ofFbo::Settings settings;
    settings.width = length;
    settings.height = length;
    settings.useDepth = true;
    settings.useStencil = true;
    settings.depthStencilAsTexture = true;
    fbo.allocate(settings);
    //
    
    // shader
    shader.load("TrainShadow/vert.vert", "TrainShadow/frag.frag");
    d_shader.load("TrainShadow/dvert.vert", "TrainShadow/dfrag.frag");
    //

    
    // cam
    cam.setPosition(vec3(0,300,0));
    cam.setUpAxis(vec3(0,1,0));
    cam.rotateDeg(180, vec3(0,0,1.0));
    cam.setFarClip(1500.);
    //
    
    light_count = 0;
    //
    
    // box
    box.setPosition(vec3(110, 100,-100));
    box.set(50);
    //
    
    // model
    loader.loadModel("TrainShadow/test.obj");
    loader.setRotation(0, 180, 0, 0, 1);
    loader.setScale(3.0,3.0,2.0);
    
    ofLogNotice() << loader.getMeshCount();
    
    mesh = loader.getMesh(0);
    for (int i = 0; i < mesh.getNumVertices(); i++) mesh.addColor(ofColor(255,255,255,255));
    //
    
    // test
    tolerate = 0.;
    
    
    
    for (int i = 0; i < 30; ++i) {
        vbo.addVertex(vec3(ofRandom(-15, 15), ofRandom(15)+50, i*33.3 -500));
    }
    
    initOsc();
}

void TrainShadow::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/train_shadow/create_light", [&](){
        lights.push_back(*new TownLight(&fbo, &d_shader));
        light_count++;
        if (light_count >= light_max) light_count = 0;
        
    });
    
    ofxSubscribeOsc(OF_PORT, "/train_shadow/seed", seed);
    
    
    // camera
    ofxSubscribeOsc(OF_PORT, "/train_shadow/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/train_shadow/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/train_shadow/cam/rotate", [&](const float rad, const glm::vec3 v) {
        cam.rotateRad(rad, v);
        
    });
}

void TrainShadow::setup() {
    
}

void TrainShadow::update() {
    // matrix
    tmpm = cam.getModelViewProjectionMatrix();
    //
    
    // model
    loader.update();
    
    // lights update
    if (lights.size() > 0) {
        auto itr = lights.begin();
        while (itr != lights.end()) {
            if (lights[std::distance(lights.begin(),itr)].update()) {
                lights.erase(itr);
            } else {
                itr++;
            }
        }
    }
    //
    int g = int(ofGetElapsedTimef() * 20.) % 30;
    
    vbo.getVertices()[g] = vec3(ofRandom(-25, 50), ofRandom(75)+25, g*33.3 -500);
}

void TrainShadow::draw() {
    
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    
    mat4 bmm = box.getGlobalTransformMatrix();
    
    mmm = mat4(loader.getModelMatrix());
//    mmm = rotate(mmm, radians(180.0f), vec3(0.0f,0.0f,1.0f));
    
    
    for (int i = 0; i < lights.size(); i++) {
        ofPushMatrix();
        lights[i].begin();
        
        
        //        d_shader.begin();
        d_shader.setUniform1f("clipD", lights[i].light.getFarClip()- lights[i].light.getNearClip());
        //        d_shader.setUniformMatrix4f("lgtMatrix", lights[i].light.getModelViewProjectionMatrix() * bmm);
        //        box.draw();
        
        //        for (auto b : boxes) {
        //            d_shader.setUniformMatrix4f("lgtMatrix", lights[i].light.getModelViewProjectionMatrix() * b.getGlobalTransformMatrix());
        //            b.draw();
        //        }
        d_shader.setUniformMatrix4f("lgtMatrix", lights[i].light.getModelViewProjectionMatrix());
        vbo.setMode(OF_PRIMITIVE_TRIANGLE_STRIP);
        glDisable(GL_CULL_FACE);
        vbo.draw();
        
        
        d_shader.setUniformMatrix4f("lgtMatrix", lights[i].light.getModelViewProjectionMatrix() * mmm);
        mesh.draw();
        //        d_shader.end();
        lights[i].end();
        ofPopMatrix();
    }
    
    
    begin();
    // render fbo init
    ofClear(180, 180, 180, 255);
    glClearDepth(1.0);
    glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
    //    glViewport(0, 0, ofGetWidth(), ofGetHeight());
    //
    
    
    ofClear(100);
    shader.begin();
    cam.begin();
    
    glEnable(GL_CULL_FACE);
    ofEnableDepthTest();
    
    array<mat4, 5> tMatrixes;
    array<mat4, 5> lgtMatrixes;
    array<vec3, 5> lightPositions;
    vector<ofTexture> d_textures;
    
    GLfloat clipDs[5];
    GLint active_lights[5];
    
    
    for (int i = 0; i < 5; i++) {
        if (i >= lights.size()) {
            active_lights[i] = false;
        } else {
            d_textures.push_back(lights[i].getTexture());
            
            active_lights[i] = true;
            clipDs[i] = lights[i].light.getFarClip() - lights[i].light.getNearClip();
            tMatrixes[i] = lights[i].tm;
            lgtMatrixes[i] = lights[i].light.getModelViewProjectionMatrix();
            lightPositions[i] = lights[i].light.getGlobalPosition();
        }
    }
    
    shader.setUniform1iv("active_light", &active_lights[0], 5);
    shader.setUniform1fv("clipD", &clipDs[0], 5);
    shader.setUniform3fv("lightPosition", &lightPositions[0].x, lightPositions.size());
    shader.setUniformMatrix4f("tMatrix", tMatrixes[0], tMatrixes.size());
    shader.setUniformMatrix4f("lgtMatrix", lgtMatrixes[0], lgtMatrixes.size());
    shader.setUniformArrayTexture("d_texture", d_textures);
    
    
    shader.setUniformMatrix4f("mMatrix", mat4());
    shader.setUniformMatrix4f("mvpMatrix", tmpm);
    shader.setUniformMatrix4f("invMatrix", inverse(mat4()));
    vbo.setMode(OF_PRIMITIVE_TRIANGLE_STRIP);
    glDisable(GL_CULL_FACE);
    vbo.draw();
    glEnable(GL_CULL_FACE);
    
    
    ofSetColor(255, 255, 255);
    //    box.draw();
    
    shader.setUniformMatrix4f("mMatrix", mmm);
    shader.setUniformMatrix4f("mvpMatrix", tmpm * mmm);
    shader.setUniformMatrix4f("invMatrix", inverse(mmm));
    shader.setUniform4f("ambientColor", vec4(0.1,0.1,0.1,1.0));
    
    mesh.draw();

    shader.end();
    cam.end();
    end();
    
    
    // debug
//    cam.begin();
    //    light.draw();
    //    ofDrawSphere(light.getGlobalPosition() + light.getLookAtDir() * 10., 5);
//    for(auto l : lights) {
        //        l.light.draw();
//    }
//    cam.end();
    //

    
    glDisable(GL_CULL_FACE);
    
//    for (int i = 0; i < lights.size(); i++) {
//        ofSetColor(255,255,255,255);
//                ofPushMatrix();
//                lights[i].getTexture().draw(i * 100, 0, 100, 100);
//                ofPopMatrix();
//    }
    
    
}

of3dPrimitive TrainShadow::createPrimitive() {
    int x = ofRandom(5.0);
    
    float height =ofRandom(100) + 100.;
    
    if (x > 4) {
        ofCylinderPrimitive cylinder;
        cylinder.set(ofRandom(30) + 20., height, 24, 2);
        cylinder.setPosition(0, height*.5, 0);
        return cylinder;
    } else if (x > 3) {
        ofConePrimitive cone;
        cone.set(ofRandom(30) + 20., height, 24, 2);
        cone.setPosition(0,  height*.5, 0);
        return cone;
    } else {
        ofBoxPrimitive box;
        box.set(ofRandom(60.) + 40., height, ofRandom(60.) + 40, 2, 2, 2);
        box.setPosition(0,  height*.5, 0);
        return box;
    }
}

void TrainShadow::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    getFbo()->allocate(size.x, size.y, GL_RGBA);
}
