#pragma once
#include "../common_settings.h"


class BaseScene {
public:
    virtual void setup(){};
    virtual void update(){};
    virtual void draw(){};
    
    virtual void windowResized(int w, int h){};
    
    virtual void receiveMessage(ofMessage msg){};
};

