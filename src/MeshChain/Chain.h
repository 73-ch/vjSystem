//
//  MyPoints.hpp
//  myCourageousSketch
//
//  Created by nami on 2017/05/23.
//
//

#pragma once

#include "ofMain.h"

class Chain {
    public :
    Chain(float g_speed, float g_z);
    void update();
    void draw();
    void changeMode(ofPrimitiveMode select_mode);
    void changeSpeed(float g_speed);
    void changeOpacity(float g_opacity);
    static ofPrimitiveMode getRandomMode() {
        array<ofPrimitiveMode, 3>modes;
        modes[0] = OF_PRIMITIVE_LINE_STRIP;
        modes[1] = OF_PRIMITIVE_LINES;
        modes[2] = OF_PRIMITIVE_TRIANGLES;
        
        return modes[floor(ofRandom(3))];
    };

    
    ofVboMesh vbo;
    ofVec3f position;
    float speed;
    float opacity;
    
    
    private :
    ofVec3f noise_seed;
    float noise_power;
    bool use_index;
    bool change_index;
    ofPrimitiveMode mode;
    int select_point;
    float z;
};

