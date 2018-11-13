#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    // oF setup
    ofSetBackgroundColor(0);
    ofSetVerticalSync(false);
    ofEnableAlphaBlending();
    
    // post_processingのソース変更
    post_processing.load("InitShader/default.vert", "InitShader/default_pfs.frag");
    pvs_text = post_processing.getShaderSource(GL_VERTEX_SHADER);
    pfs_text = post_processing.getShaderSource(GL_FRAGMENT_SHADER);
    
    initOsc();
    
    manager = *new SceneManager(&info);
    
    screen_size = glm::vec2(ofGetWidth(), ofGetHeight());
    
    screen_plane.set(screen_size.x*2., screen_size.y*2.);
    screen_plane.setPosition(0, 0, 0);
    
    image.load("test.png");
    
    windowResized(ofGetWidth(), ofGetHeight());
}

void ofApp::initOsc() {
    ofxPublishOsc(MAX_HOST, MAX_PORT, "/fps", &ofGetFrameRate);
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/fragment", [=](const string &str) {
        post_processing.setupShaderFromSource(GL_VERTEX_SHADER, pvs_text);
        post_processing.setupShaderFromSource(GL_FRAGMENT_SHADER, str);
        post_processing.bindDefaults();
        post_processing.linkProgram();
        
        ofLogNotice() << "pfs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/seeds", seeds);
}

//--------------------------------------------------------------
void ofApp::update(){
    info.time = ofGetElapsedTimef();
    manager.update();
}

//--------------------------------------------------------------
void ofApp::draw(){
    manager.drawScene();
    
    post_processing.begin();
//    post_processing.bindDefaults();
    
    ofSetColor(255);
    
    manager.attachUniforms(post_processing);
    
    post_processing.setUniform4f("seeds", seeds);
    post_processing.setUniform1f("time", info.time);
    
    post_processing.setUniform2f("u_resolution", screen_size);
    
    ofSetColor(255,255,255,255);
    screen_plane.draw();
    post_processing.end();
    
    ofSetColor(255);
    ofDrawBitmapString(ofToString(ofGetFrameRate()), 10, 10);
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
    info.screen_size = glm::vec2(ofGetWidth(), ofGetHeight());
    
    screen_size = glm::vec2(ofGetWidth(), ofGetHeight());
    screen_plane.set(screen_size.x*2., screen_size.y*2.);
    manager.windowResized(screen_size);
}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
