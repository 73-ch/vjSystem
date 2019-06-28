#include "RayMarching.h"

RayMarching::RayMarching(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "RayMarching";
    plotter = *new CodePlotter(g_info);
    
    vertex_text = DEFAULT_VERTEX;
    fragment_text = DEFAULT_FRAGMENT;
    
    initOsc();
    
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
    
}

void RayMarching::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/ray_marching/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "ray_marching fs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/ray_marching/seed", seed);
    
    ofxSubscribeOsc(OF_PORT, "/ray_marching/cam/pos", cam_pos);
    ofxSubscribeOsc(OF_PORT, "/ray_marching/cam/up", cam_up);
    ofxSubscribeOsc(OF_PORT, "/ray_marching/cam/dir", cam_dir);
    
    ofxSubscribeOsc(OF_PORT, "/ray_marching/plotter/color", [=](const glm::vec4 color) {
        plotter.color = ofFloatColor(color.x, color.y, color.z, color.w);
    });
    
    ofxSubscribeOsc(OF_PORT, "/ray_marching/plotter/speed", [&](const float speed) {
        plotter.setSpeed(speed);
    });
    
    
}

void RayMarching::setup() {
    
}

void RayMarching::update() {
    plotter.update();
}

void RayMarching::draw() {
    begin();
    ofClear(0);
    
    shader.begin();
    
    shader.setUniform4f("seed", seed);
    shader.setUniform1f("time", info->time);
    shader.setUniform2f("resolution", info->screen_size);
    shader.setUniform3f("cam_pos", cam_pos);
    shader.setUniform3f("cam_dir", cam_dir);
    shader.setUniform3f("cam_up", cam_up);
    
    ofSetColor(255);
    plane.draw();
    shader.end();
    
    plotter.draw();
    
    end();
}

void RayMarching::reloadShader() {
    const string b_vs = shader.getShaderSource(GL_VERTEX_SHADER);
    const string b_fs = shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    bool result = shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_VERTEX_SHADER, b_vs);
        vertex_text = b_vs;
    }
    
    result = shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_FRAGMENT_SHADER, b_fs);
        fragment_text= b_fs;
    }
    
    shader.bindDefaults();
    shader.linkProgram();
    
    plotter.setText(fragment_text);
}

void RayMarching::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    plane.set(size.x*2., size.y*2.);
}
