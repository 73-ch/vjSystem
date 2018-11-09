#pragma once
#include "../common_settings.h"


class BaseScene {
    
protected:
    ofFbo output_fbo;
    
public:
    virtual void setup(){};
    virtual void initOsc(){};
    virtual void update(){};
    virtual void draw(){};
    
    virtual void windowResized(int w, int h){};
    
    ofFbo* getFbo(){return &output_fbo;}
    
    string name;
};
