#pragma once
#include "common_settings.h"


class BaseScene {
    
private:
    ofFbo output_fbo;
protected:
    const BasicInfos* info;
    void begin() {
        ofPushMatrix();
        ofPushView();
        ofPushStyle();
        output_fbo.begin();
    }
    
    void end() {
        output_fbo.end();
        ofPopStyle();
        ofPopView();
        ofPopMatrix();
    }
    
public:
    BaseScene(const BasicInfos* g_info) {
        info = g_info;
        windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
        output_fbo.getTexture().getTextureData().bFlipTexture = true;
    };
    
    virtual void setup(){};
    virtual void initOsc(){};
    virtual void update(){};
    virtual void draw(){};
    
    virtual void windowResized(glm::vec2 size){
        output_fbo.allocate(size.x, size.y, GL_RGBA);
    };
    
    ofFbo* getFbo(){return &output_fbo;}
    
    string name;
};
