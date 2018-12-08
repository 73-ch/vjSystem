#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class FeedbackObject : public BaseScene {
    
    enum DrawObj {
        NONE,
        BOX_MESH,
        BOX_WIREFRAME,
        SPHERE_MESH,
        SPHERE_WIREFRAME,
        ABLETON_LOGO,
        MAX,
        ABLETON,
        WINDOW1,
        WINDOW2,
    };
    
    DrawObj draw_obj;
    
    ofTexture ableton_logo;
    ofTexture max_logo;
    ofTexture ableton;
    ofTexture window1;
    ofTexture window2;
public:
    FeedbackObject(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
    
    ofFbo fbo[2];
    
    ofVboMesh obj;
    
    ofEasyCam cam;
    
    glm::vec4 feedback_color;
    glm::vec4 base_color;
    
    float before_opacity;
    glm::vec3 color;
    glm::vec3 cam_pos;
    glm::vec3 up_dir;
    glm::vec3 lookat;
};
