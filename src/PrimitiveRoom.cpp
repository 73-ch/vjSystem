#include "PrimitiveRoom.h"

PrimitiveRoom::PrimitiveRoom(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "PrimitiveRoom";
    
    shader.load("InitShader/default.vert", "InitShader/default.frag");
    
    vertex_text = shader.getShaderSource(GL_VERTEX_SHADER);
    fragment_text = shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    initOsc();
    
    // camera settings
    cam.setFov(45);
    cam.setAspectRatio(ofGetWidth() / ofGetHeight());
    cam.setFarClip(1000);
    cam.setNearClip(0.1);
    //    cam.setupPerspective();
    cam.lookAt(glm::vec3(0.));
    cam.setPosition(0, 0, 200);
}

void PrimitiveRoom::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/primitive_room/vertex", [=](const string &vert) {
        vertex_text = vert;
        reloadShader();
        ofLogNotice() << "primitive_room vs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/primitive_room/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "primitive_room fs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/primitive_room/seed", seed);
    
    // camera
    ofxSubscribeOsc(OF_PORT, "/primitive_room/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/primitive_room/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
}

void PrimitiveRoom::setup() {
    
}

void PrimitiveRoom::update() {
    
}

void PrimitiveRoom::draw() {
    begin();
    ofClear(0);
    cam.begin();
    shader.begin();
    
    
    shader.setUniform4f("seed", seed);
    shader.setUniform1f("time", info->time);
    shader.setUniform2f("u_resolution", info->screen_size);
    
    ofSetColor(255);
    ofDrawBox(glm::vec3(0), 10);
    
    shader.end();
    
    mesh.drawInstanced(OF_MESH_FILL, 100);
    
    //debug
    ofDrawAxis(10);
    
    cam.end();
    end();
}

void PrimitiveRoom::reloadShader() {
    shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    shader.bindDefaults();
    shader.linkProgram();
}

void PrimitiveRoom::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
}
