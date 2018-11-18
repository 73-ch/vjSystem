#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class Instancing : public BaseScene {
private:
    ofVboMesh mesh;
    unsigned int primitive_num;
    ofPrimitiveMode mode;
    glm::vec4 seed;
    
    void changeVertexNum(const unsigned int num);
    
    ofCamera cam;
    glm::vec3 up_dir;
    glm::vec3 lookat;
    
    ofShader primitive_shader;
    string primitive_shader_vertex;
    string primitive_shader_fragment;
    void reloadPrimitiveShader();
    
    GLuint feedback[2];
    ofBufferObject position_buffer[2], velocity_buffer[2], shadow_buffer[2];
    
    ofShader transform_feedback;
    
    ofVbo vbo[2];
    int frame;
    glm::vec3 light_position;
    
    int position_location, velocity_location, age_location, lifetime_location, shadow_location, shadow_velocity_location;
    
    float timestep, scale;
    glm::vec4 start_color, end_color;
    
    ofVboMesh shadow_mesh;
    ofShader shadow_shader;
    string shadow_shader_vs;
    string shadow_shader_fs;
    void reloadShadowShader();
    
public:
    Instancing(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
};
