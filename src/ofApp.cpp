#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    // oF setup
    ofSetBackgroundColor(0);
    ofEnableAlphaBlending();
    ofHideCursor();
    
    // post_processingのソース変更
    post_processing.load("InitShader/default.vert", "InitShader/default_pfs.frag");
    pvs_text = post_processing.getShaderSource(GL_VERTEX_SHADER);
    pfs_text = post_processing.getShaderSource(GL_FRAGMENT_SHADER);
    
    initOsc();
    info.screen_size = glm::vec2(ofGetWidth(), ofGetHeight());
    
    manager = *new SceneManager(&info);
    
    screen_size = glm::vec2(ofGetWidth(), ofGetHeight());
    
    pingPong[0].allocate(ofGetWidth(), ofGetHeight());
    pingPong[1].allocate(ofGetWidth(), ofGetHeight());
    pingPong[0].getTexture().getTextureData().bFlipTexture = true;
    pingPong[1].getTexture().getTextureData().bFlipTexture = true;
    
    screen_plane.set(screen_size.x*2., screen_size.y*2.);
    screen_plane.setPosition(0, 0, 0);
    
    windowResized(ofGetWidth(), ofGetHeight());

    syphon.setName("nami_out");
}

void ofApp::initOsc() {
    ofxPublishOsc(MAX_HOST, MAX_PORT, "/fps", &ofGetFrameRate);
    ofxPublishOsc(MAX_HOST, MAX_PORT, "/time", &ofGetElapsedTimef);
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/fragment", [=](const string &str) {
        const string before = post_processing.getShaderSource(GL_FRAGMENT_SHADER);
        post_processing.setupShaderFromSource(GL_VERTEX_SHADER, pvs_text);
        const bool result = post_processing.setupShaderFromSource(GL_FRAGMENT_SHADER, str);
        
        if (!result) {
            post_processing.setupShaderFromSource(GL_FRAGMENT_SHADER, before);
            ofLogNotice() << "pfs failed";
        } else {
            ofLogNotice() << "pfs changed";
        }
        
        post_processing.bindDefaults();
        post_processing.linkProgram();
    });
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/seeds", seeds);
    
    ofxSubscribeOsc(OF_PORT, "/adjust/rotate", adjust_angle);
    ofxSubscribeOsc(OF_PORT, "/adjust/scale", adjust_scale);
    ofxSubscribeOsc(OF_PORT, "/adjust/offset", adjust_offset);
    
}

//--------------------------------------------------------------
void ofApp::update(){
    info.screen_size = glm::vec2(ofGetWidth(), ofGetHeight());
    info.time = ofGetElapsedTimef();
    manager.update();
}

//--------------------------------------------------------------
void ofApp::draw(){
    manager.drawScene();
    
    pingPong[0].begin();
    ofClear(0);
    
    post_processing.begin();
    
    ofSetColor(255);
    
    manager.attachUniforms(post_processing);
    
    post_processing.setUniform4f("seeds", seeds);
    post_processing.setUniform1f("time", info.time);
    post_processing.setUniformTexture("before_texture", pingPong[1], 4);
    
    post_processing.setUniform2f("u_resolution", screen_size);
    
    ofSetColor(255,255,255,255);
    screen_plane.draw();
    post_processing.end();
    pingPong[0].end();
    
    swap(pingPong[0], pingPong[1]);
    
    ofSetColor(255);
    
    ofPushMatrix();
    ofTranslate(info.screen_size * .5);
    ofTranslate(adjust_offset);
    ofScale(adjust_scale);
    ofRotateYDeg(adjust_angle);
    ofTranslate(-info.screen_size * .5);
    
    
    pingPong[1].draw(0,0,info.screen_size.x, info.screen_size.y);
    
    syphon.publishTexture(&pingPong[1].getTexture());
    ofPopMatrix();
    
//    ofDrawBitmapString(ofToString(ofGetFrameRate()), 10, 10);
}

void ofApp::drawPrev(ofEventArgs & args) {
    ofSetColor(255);
    pingPong[0].draw(0,0,720,450);
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
    
    pingPong[0].allocate(ofGetWidth(), ofGetHeight());
    pingPong[1].allocate(ofGetWidth(), ofGetHeight());
}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
