#pragma once

#include "ofMain.h"

enum PathMode {
    RANDOM,
    STRAIGHT,
    FOLLOW
};

class Trail {
    ofBoxPrimitive box;
    
    ofPolyline line;
    
    glm::vec4 seeds{ofRandom(1), ofRandom(1), ofRandom(1), ofRandom(1)};
    glm::vec3 position;
    glm::vec3 velocity;
    
    PathMode path_mode;
    
    
public:
    Trail(glm::vec3 spawn_pos);
    bool update(float span, glm::vec3 target, glm::vec3 target_dir);
    void draw();
};
