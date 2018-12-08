//
//  Chain.cpp
//  myCourageousSketch
//
//  Created by nami on 2017/05/23.
//
//

#include "Chain.h"

Chain::Chain(float g_speed, float g_z){
    select_point = 0;
    
    mode = getRandomMode();
    changeMode(mode);
    
    noise_seed = ofVec3f(ofRandom(1.), ofRandom(1.), ofRandom(1.));
    position = ofVec3f(ofRandom(1800) - 900, ofRandom(1800) - 900, 0);
    noise_power = 5.;
    
    speed = g_speed;
    
    updateDirection();
    vbo.addVertex(glm::vec3(ofNoise(select_point / noise_power, noise_seed.x) * 900 - 450, ofNoise(select_point / noise_power, noise_seed.y) * 900 - 450, z) + direction);
    
    opacity = 100;
    z = g_z;
}

void Chain::update() {
    if (change_index && ofGetFrameNum() % 12 == 0 && vbo.getVertices().size() > 0) {
        vbo.enableIndices();
        for (int i = 0; i < int(vbo.getVertices().size() / 2 - 1); i++) {
            vbo.addIndex(i*2);
            vbo.addIndex(i*2+1);
            vbo.addIndex(i*2+2);
        }
        change_index = false;
    }
    select_point = floor(ofGetFrameNum() / 6);
    if (ofGetFrameNum() % 6 == 0 && select_point > 0) {
        z += speed;

        
        direction = (glm::vec3(1.0)-glm::step(glm::vec3(450, 450, 10.), glm::abs(vbo.getVertices().back()))) * direction;
        
        vbo.addVertex(glm::vec3(ofNoise(select_point * noise_power, noise_seed.x) * 900 - 450, ofNoise(select_point * noise_power, noise_seed.y) * 900 - 450, z) + direction);
        
        if (use_index && ofGetFrameNum() % 12 == 0) {
            int last_vertex = vbo.getVertices().size();
            int num = last_vertex - last_vertex % 3;
            vbo.addIndex(last_vertex - 3);
            vbo.addIndex(last_vertex - 2);
            vbo.addIndex(last_vertex - 1);
        }
    }
}

void Chain::draw() {
    ofSetColor(255, 255, 255, 100);
    vbo.setMode(OF_PRIMITIVE_POINTS);
    vbo.draw();
    ofSetColor(255, 255, 255, opacity);
    vbo.setMode(mode);
    vbo.drawInstanced(OF_MESH_FILL, 0);
}

void Chain::changeMode(ofPrimitiveMode select_mode){
    switch (select_mode) {
        case OF_PRIMITIVE_LINE_STRIP:
            use_index = false;
            mode = OF_PRIMITIVE_LINE_STRIP;
            vbo.clearIndices();
            vbo.disableIndices();
            break;
            
        case OF_PRIMITIVE_LINES:
            use_index = false;
            mode = OF_PRIMITIVE_LINES;
            vbo.disableIndices();
            vbo.clearIndices();
            break;
            
        case OF_PRIMITIVE_TRIANGLES:
            mode = OF_PRIMITIVE_TRIANGLES;
            change_index = true;
            use_index = true;
            break;
            
        default:
            break;
    }
}

void Chain::changeNoisePower(const float power) {
    noise_power = power;
}

void Chain::changeSpeed(float g_speed) {
    speed = g_speed;
}

void Chain::changeOpacity(float g_opacity) {
    opacity = g_opacity;
}

void Chain::updateDirection() {
    direction = glm::vec3(ofRandom(100.), ofRandom(100.), 0.);
}
