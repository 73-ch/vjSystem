#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class VertexArt : public BaseScene {
private:
    ofVboMesh mesh;
    unsigned int vertex_num;
    ofPrimitiveMode mode;
    glm::vec4 seed;

    ofShader shader;
    string vertex_text;
    string fragment_text;
   
    void reloadShader();
    void changeVertexNum(const unsigned int num);
    
    ofCamera cam;
    glm::vec3 up_dir;
    glm::vec3 lookat;
    
public:
    VertexArt(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
};
