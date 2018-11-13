//
//  TestScene.cpp
//  vjSystem
//
//  Created by nami on 2018/11/06.
//

#include "TestScene.h"

TestScene::TestScene(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "TestScene";
    ofSetCircleResolution(24);
//    output_fbo = new ofFbo();
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
}

void TestScene::initOsc() {
    
}

void TestScene::setup() {
    
}

void TestScene::update() {
}

void TestScene::draw() {
    ofPushMatrix();
    ofPushView();
    ofPushStyle();
    getFbo()->begin();
    ofClear(0);
    
//    ofSetColor(int(ofGetElapsedTimef()) % 255);
    ofSetColor(255);
//    ofDrawRectangle(0, 0, ofGetWidth(), ofGetHeight());
    ofTranslate(ofGetWidth()*.5, ofGetHeight()*.5);
    ofDrawCircle(0, 0, 100);
    getFbo()->end();
    ofPopMatrix();
    ofPopView();
    ofPopStyle();
}

void TestScene::windowResized(glm::vec2 size) {
    getFbo()->allocate(size.x, size.y, GL_RGBA);
}
