#pragma once

#include "common_settings.h"

class ShaderArt : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;
    
public:
    ShaderArt();
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(int w, int h ) override;
};
