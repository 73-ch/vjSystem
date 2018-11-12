#pragma once

#include "common_settings.h"

class VertexArt : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;
    
    void reloadShader();
    
public:
    VertexArt();
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(int w, int h ) override;
    
    string vertex_text;
    string fragment_text;
    
    glm::vec4 seed;
};
