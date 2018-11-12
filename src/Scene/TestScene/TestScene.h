#pragma once

#include "common_settings.h"

class TestScene : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;
    
    void reloadShader();
    
public:
    TestScene();
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(int w, int h ) override;
};
