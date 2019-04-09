#pragma once

#include "common_settings.h"
#include "BaseScene.h"

#include "ofxPubSubOsc.h"
#include "ofxBullet.h"
#include "RigidText.hpp"

class PhysicsLyric : public BaseScene {
    ofPlanePrimitive plane;
    ofShader shader;

    void reloadShader();

    ofxBulletWorldRigid world;
    vector<ofxBulletBox*> bounds;
    ofxBulletCustomShape* bounds_shape;
    ofMaterial bounds_material;
    float bounds_width;
    bool b_drop_box;

    bool b_draw_debug;

    ofMesh mesh;
    ofCamera camera;
    ofLight light;

    vector<RigidText*> texts;

    glm::vec3 lookat;

public:
    PhysicsLyric(const BasicInfos* g_info);

    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;

    void windowResized(glm::vec2 size) override;


};
