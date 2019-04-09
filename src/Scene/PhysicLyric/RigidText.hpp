#pragma once

#include "ofMain.h"
#include "ofxBullet.h"

using namespace glm;

class RigidText {
    void calcOffset();
    void createTextMesh();
    void createBulletShape();
    
    ofxBulletWorldRigid& world;
    ofxBulletCustomShape* shape;
    
    
    const ofTrueTypeFont& font;
    vec3 offset;
    ofMesh mesh;
    string current_text;
    float current_thickness;
    bool set;
    
public:
    RigidText(ofxBulletWorldRigid& _world, const ofTrueTypeFont& _font);
    void setText(const string text, const float thickness);
    ofMesh& getMesh();
    void draw();
};
