#pragma once

#include "common_settings.h"
#include "BaseScene.h"

#include "ofxAssimpModelLoader.h"

using namespace glm;

struct Tree {
    vec3 pos;
    vec3 scale;
    float rotate;
};


class AvoidObject : public BaseScene {
    void reloadShader();
    
    string vertex_text;
    string fragment_text;
public:
    AvoidObject(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;

    ofCylinderPrimitive cylinder;
    ofVboMesh vbo_mesh;
    ofEasyCam cam;
    vec3 lookat;
    ofShader shader;
    
    ofSpherePrimitive sphere;
    
    
    array<GLint, 5> avoid_active;
    array<of3dPrimitive, 5> avoid_objects;
    array<vec3, 5> avoid_pos;
    array<float, 5> avoid_size;
    array<vec3, 5> avoid_color;
    
    int vert_length;
    int cylinder_num;
    
    ofxAssimpModelLoader loader;
    
    vector <Tree*> trees;
    
    bool mode;
    
};
