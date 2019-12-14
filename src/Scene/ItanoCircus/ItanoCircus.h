#include "common_settings.h"
#include "BaseScene.h"
#include "Trail.hpp"

class ItanoCircus : public BaseScene {
    void reloadShader();
//    void changeVertexNum(const unsigned int num);
    
    float before_time;
    glm::vec3 target_a_position;
    glm::vec3 target_a_velocity;
    
    glm::vec3 target_b_position;
    glm::vec3 target_b_velocity;
    
    
    vector<Trail> trails_a;
    vector<Trail> trails_b;
    
    bool follow_cam = true;
    glm::vec3 cam_seeds{ofRandom(1.0), ofRandom(1.0), ofRandom(1.0)};
    ofCamera cam;
    ofEasyCam dev_cam;
    
    ofShader trail_shader;
    string vertex_text;
    string fragment_text;
    
    ofFbo main_fbo;
    ofShader fisheye_effect;
    float cam_lookat_noise = 0.;
    glm::vec3  cam_pos;
    
    bool battle_mode = false;
    bool chase_b = false;
    
    float time_scale;
    
    glm::vec3 spawn_point{ofRandom(-500, 500), ofRandom(-500, 500), ofRandom(-500, 500)};
    
public:
    ItanoCircus(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
};
