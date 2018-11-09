//
//  ShaderArt.cpp
//  vjSystem
//
//  Created by nami on 2018/11/06.
//

#include "ShaderArt.h"

ShaderArt::ShaderArt() {
    name = "ShaderArt";
    
    windowResized(ofGetWidth(), ofGetHeight());
}

void ShaderArt::initOsc() {
    
}

void ShaderArt::setup() {
    
}

void ShaderArt::update() {
    
}

void ShaderArt::draw() {
    output_fbo.begin();
    
    ofSetColor(255, 0,0);
    plane.draw();
    
    output_fbo.end();
}

void ShaderArt::windowResized(int w, int h) {
    output_fbo.allocate(w, h, GL_RGBA);
    
    plane.set(w, h);
}
