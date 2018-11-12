#pragma once
#include "../common_settings.h"


class BaseScene {
    
private:
    ofFbo output_fbo;
    
public:
    virtual void setup(){};
    virtual void initOsc(){};
    virtual void update(){};
    virtual void draw(){};
    
    virtual void windowResized(glm::vec2 size){};
    
    ofFbo* getFbo(){return &output_fbo;}
    
    string name;
};
