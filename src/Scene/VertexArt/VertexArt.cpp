#include "VertexArt.h"
VertexArt::VertexArt(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "VertexArt";
    shader.load("InitShader/default.vert", "InitShader/default.frag");
    vertex_text = shader.getShaderSource(GL_VERTEX_SHADER);
    fragment_text = shader.getShaderSource(GL_FRAGMENT_SHADER);

    vertex_num = 3000000;
    changeVertexNum(vertex_num);
//
    mesh.setMode(OF_PRIMITIVE_POINTS);
    mesh.setUsage(GL_STATIC_DRAW);
//
    initOsc();
    
    // camera settings
    cam.setFov(45);
    cam.setAspectRatio(ofGetWidth() / ofGetHeight());
    cam.setFarClip(3000);
    cam.setNearClip(0.1);
//    cam.setupPerspective();
    cam.lookAt(glm::vec3(0.));
    cam.setPosition(0, 0, 200);
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
    
    glEnable(GL_PROGRAM_POINT_SIZE);
}

void VertexArt::setup() {
    
}

void VertexArt::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/vertex_art/vertex_num", [=](const unsigned int num) {
        changeVertexNum(num);
    });
    
    ofxSubscribeOsc(OF_PORT, "/vertex_art/primitive_mode", [=](const unsigned int mode_num) {
        mesh.setMode(static_cast<ofPrimitiveMode>(mode_num));
    });
    
    ofxSubscribeOsc(OF_PORT, "/vertex_art/vertex", [=](const string &vert) {
        vertex_text = vert;
        reloadShader();
    });
    
    ofxSubscribeOsc(OF_PORT, "/vertex_art/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
    });
    
    ofxSubscribeOsc(OF_PORT, "/vertex_art/seed", seed);
    
    
    // camera
    ofxSubscribeOsc(OF_PORT, "/vertex_art/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/vertex_art/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
}


void VertexArt::update() {
    
}

void VertexArt::draw() {
    begin();
    ofClear(0);
    cam.begin();
    shader.begin();
    
    shader.setUniform4f("seed", seed);
    shader.setUniform1f("time", info->time);
    shader.setUniform1i("vertex_num", vertex_num);
    shader.setUniform3f("cam_pos", cam.getPosition());
    
    mesh.draw();
    
    shader.end();
    
    cam.end();
    end();
}

void VertexArt::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    cam.setAspectRatio(size.x / size.y);
}

void VertexArt::changeVertexNum(const unsigned int num) {
    mesh.clearVertices();
    
    vertex_num = num;
    
    vector<glm::vec3> verts(vertex_num);
    mesh.addVertices(verts);
    verts.clear();
    
//    ofLogNotice() << "vertex_num : " << mesh.getNumVertices();
}

void VertexArt::reloadShader() {
    const string b_vs = shader.getShaderSource(GL_VERTEX_SHADER);
    const string b_fs = shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    bool result = shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_VERTEX_SHADER, b_vs);
        vertex_text = b_vs;
    } else {
        ofLogNotice() << "vertex_art vs changed";
    }
    
    result = shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_FRAGMENT_SHADER, b_fs);
        fragment_text= b_fs;
    } else {
        ofLogNotice() << "vertex_art fs changed";
    }
    
    shader.bindDefaults();
    shader.linkProgram();
}
