#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    // oF setup
    ofSetBackgroundColor(0);
    ofSetVerticalSync(false);
    ofEnableAlphaBlending();
    
    // post_processingのソース変更
    post_processing.load("InitShader/default.vert", "InitShader/default.frag");
    
    initOsc();
}

void ofApp::initOsc() {
    ofxPublishOsc(MAX_HOST, MAX_PORT, "/fps", &ofGetFrameRate);
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/fragment", [=](const string &str) {
        post_processing.setupShaderFromSource(GL_VERTEX_SHADER, DEFAULT_VERTEX);
        post_processing.setupShaderFromSource(GL_FRAGMENT_SHADER, str);
        post_processing.bindDefaults();
        post_processing.linkProgram();
    });
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/seeds", seeds);
}

//--------------------------------------------------------------
void ofApp::update(){
    manager.update();
}

//--------------------------------------------------------------
void ofApp::draw(){
    manager.drawScene();
    
    post_processing.begin();
    
    ofSetColor(255);
    
    manager.drawFbo();
    
    post_processing.setUniform4f("seeds", seeds);

    
    post_processing.end();
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
