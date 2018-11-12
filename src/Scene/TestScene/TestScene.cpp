//
//  TestScene.cpp
//  vjSystem
//
//  Created by nami on 2018/11/06.
//

#include "TestScene.h"

TestScene::TestScene() {
    name = "TestScene";
//    output_fbo = new ofFbo();
    windowResized(ofGetWidth(), ofGetHeight());
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
    
    ofSetColor(ofRandom(255));
    ofDrawRectangle(0, 0, ofGetWidth(), ofGetHeight());
    getFbo()->end();
    ofPopMatrix();
    ofPopView();
    ofPopStyle();
}

void TestScene::windowResized(int w, int h) {
    getFbo()->allocate(w, h, GL_RGBA);
}
