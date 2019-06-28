#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class PointShadowBox : public BaseScene {    
    unsigned int glDepthMapFbo;
    ofFbo depthMapFbo;
    unsigned int depthCubeMap;
    glm::mat4 shadowProj;
    glm::vec3 lightPos;
    vector<glm::mat4> shadowTransforms;
    ofShader depthShader;
    float far_plane;
    
    ofEasyCam cam;
    vector<ofBoxPrimitive> boxes;
    vector<glm::vec3> box_transform_dirs;
    ofBoxPrimitive room;
    
    // render pass
    ofShader mainShader;
    
    glm::vec3 beforeCamPos;
    glm::vec3 moveCamDir;
    
    const unsigned int SHADOW_WIDTH = 1024, SHADOW_HEIGHT = 1024;
    
    const glm::vec3 axis[6]{
        glm::vec3(1,0,0), glm::vec3(-1,0,0),
        glm::vec3(0,1,0), glm::vec3(0,-1,0),
        glm::vec3(0,0,1), glm::vec3(0,0,-1),
    };
    
    const int one_loop = 180;
    
    float easeInOut(float t) {
        return t < 0.5 ? 4.0 * t * t * t : 0.5 * pow(2.0 * t - 2.0, 3.0) + 1.0;
    }
    
    glm::vec3 cam_pos;
    glm::vec3 up_dir;
    glm::vec3 lookat;
    
    bool cam_mode;
    
public:
    PointShadowBox(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
};
