#pragma once

#include "common_settings.h"
#include "BaseScene.h"
#include "Chain.h"

class MeshChain : public BaseScene {
    
    enum ChainMode {
        LINES,
        LINE_STRIP,
        TRIANGLES,
        RANDOM
    };
    
    void addChain();
    
public:
    MeshChain(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
    
    glm::vec4 feedback_color;
    glm::vec3 base_color;
    
    float before_opacity;
    glm::vec3 color;
    glm::vec3 cam_pos;
    glm::vec3 up_dir;
    glm::vec3 lookat;
    
    ofCamera cam;
    float move_z;
    int select_point;
    bool cam_direction;
    
    float cam_distance;
    
    bool create_chain;
    
    float opacity;
    
    vector <Chain> chains;
    
    ChainMode current_mode;
};
