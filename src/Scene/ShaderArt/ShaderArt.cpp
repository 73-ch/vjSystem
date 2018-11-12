//
//  ShaderArt.cpp
//  vjSystem
//
//  Created by nami on 2018/11/06.
//

#include "ShaderArt.h"

ShaderArt::ShaderArt() {
    name = "ShaderArt";
    
    vertex_text = DEFAULT_VERTEX;
    fragment_text = DEFAULT_FRAGMENT;
    
    initOsc();
    
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
}

void ShaderArt::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/shader_art/vertex", [=](const string &vert) {
        vertex_text = vert;
        reloadShader();
        ofLogNotice() << "shader_art vs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/shader_art/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "shader_art fs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/shader_art/seed", seed);
}

void ShaderArt::setup() {
    
}

void ShaderArt::update() {
    
}

void ShaderArt::draw() {
    getFbo()->begin();
    ofClear(0);
    
    shader.begin();
    
    shader.setUniform4f("seed", seed);
    
    ofSetColor(255);
    plane.draw();
    shader.end();
    getFbo()->end();
}

void ShaderArt::reloadShader() {
    shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    shader.bindDefaults();
    shader.linkProgram();
}

void ShaderArt::windowResized(glm::vec2 size) {
    getFbo()->allocate(size.x, size.y, GL_RGBA);
    
    plane.set(size.x, size.y);
}
