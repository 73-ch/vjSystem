#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class ShaderArt : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;
    
    void reloadShader();
    
public:
    ShaderArt(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
    
    string vertex_text;
    string fragment_text;
    
    glm::vec4 seed;
};
