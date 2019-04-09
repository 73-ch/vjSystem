#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    // oF setup
    ofSetBackgroundColor(0);
//    ofSetVerticalSync(false);
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
    
    ofTrueTypeFontSettings font_settings("NotoSansCJKjp-Medium.otf", 50);
    font_settings.addRanges(ofAlphabet::Japanese);
    font_settings.addRange(ofUnicode::Latin);
    font_settings.addRange(ofUnicode::Latin1Supplement);
    font_settings.addRange(ofUnicode::Space);
    font_settings.addRange(ofUnicode::NumberForms);
    font_settings.addRange(ofUnicode::Hiragana);
    font_settings.addRange(ofUnicode::Katakana);
    font_settings.addRange(ofUnicode::HangulJamo);
    font_settings.addRange(ofUnicode::HangulExtendedA);
    font_settings.addRange(ofUnicode::HangulExtendedB);
    font_settings.addRange(ofUnicode::HangulSyllables);
    font_settings.addRange(ofUnicode::HangulCompatJamo);
    font_settings.contours = true;
    font_settings.antialiased = true;
    info.font.load(font_settings);
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
        } else {
            ofLogNotice() << "pfs changed";
        }
        
        post_processing.bindDefaults();
        post_processing.linkProgram();
    });
    
    ofxSubscribeOsc(OF_PORT, "/post_processing/seeds", seeds);
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
    pingPong[1].draw(0,0,info.screen_size.x, info.screen_size.y);
    
//    ofDrawBitmapString(ofToString(ofGetFrameRate()), 10, 10);
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
