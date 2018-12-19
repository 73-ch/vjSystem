#pragma once

#include "common_settings.h"
#include "BaseScene.h"

using namespace glm;

#define MIN_R 10.0
#define MAX_R 40.0
#define COLLISION_R .65
#define COLLISION_INCREASE 0.01
#define COLLISION_BOOST 1.0
#define COLLISION_BOOST_SPEED 0.05
#define DROP_RATE 50

class RainDrop : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;
    
    void reloadShader();
    
public:
    RainDrop(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void reloadMainShader();
    
    void windowResized(glm::vec2 size) override;
    
    struct LargeDrop {
        float r;
        vec2 pos;
        vec2 spread = vec2(0);
        vec2 momentum = vec2(0);
        float last_spawn = 0.;
        float next_spawn = 0.;
        LargeDrop* parent;
        float size;
        bool isNew;
        bool killed;
        float shrink;
        float spawn_time;
    };
    float time_scale = 1.0;
    float fall_speed = 0.5;
    float trail_rate = 1.0;
    float last_time;
    
    bool raining = true;
    
    
    vector<LargeDrop*> large_drops;
    ofFbo large_scene;
    
    ofFbo main_scene;
    ofShader main_shader;
    string main_fragment;
    ofDirectory image_dir;
    int current_image_dir;
    ofPlanePrimitive main_plane;
    ofImage tex0;
    ofImage tex1;
    
    ofShader refer_texture_shader;
    
    // debug
    ofImage test_image;
    ofShader rain_shader;
};
