#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class PrimitiveRoom : public BaseScene {
    
    ofShader shader;
    
    void reloadShader();
    
public:
    PrimitiveRoom(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
    
    string vertex_text;
    string fragment_text;
    
    glm::vec4 seed;
    
    ofCamera cam;
    glm::vec3 up_dir;
    glm::vec3 lookat;
    
    ofVboMesh mesh;    
};
