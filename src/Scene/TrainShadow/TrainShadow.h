#pragma once

#include "common_settings.h"
#include "BaseScene.h"

#include "ofxAssimpModelLoader.h"
#include "TownLight.h"
#include "ofxShaderTex.h"

class TrainShadow : public BaseScene {
    void reloadShader();
    of3dPrimitive createPrimitive();
    
public:
    TrainShadow(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
    
    ofEasyCam cam;
    ofCamera light;
    
    vector <TownLight> lights;
    int light_count;
    int light_max;
    
    vector<ofBoxPrimitive> boxes;
    
    ofVboMesh vbo;
    
    ofBoxPrimitive box;
    
    ofxShaderTex shader;
    ofxShaderTex d_shader;
    ofxShaderTex t_shader;
    
    ofFbo fbo;
    
    ofxAssimpModelLoader loader;
    
    mat4 tmpm;
    mat4 btm;
    mat4 tm;
    mat4 dvpm;
    mat4 mmm;
    
    ofMesh mesh;
    
    float tolerate;
    
    glm::vec4 seed;
    glm::vec3 lookat;
};
