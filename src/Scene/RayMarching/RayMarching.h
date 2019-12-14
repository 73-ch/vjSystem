
#pragma once

#include "common_settings.h"
#include "BaseScene.h"
#include "PlotCode.h"

using namespace glm;

class RayMarching : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;
    
    void reloadShader();
    
public:
    RayMarching(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
    
    string vertex_text;
    string fragment_text;
    
    vec4 seed;
    
    vec3 cam_pos;
    vec3 cam_up;
    vec3 cam_dir;
    
    
    CodePlotter& plotter = *new CodePlotter(info);
};
