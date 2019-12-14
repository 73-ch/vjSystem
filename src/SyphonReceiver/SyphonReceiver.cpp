#include "SyphonReceiver.hpp"

SyphonReceiver::SyphonReceiver(const BasicInfos* g_info) : BaseScene(g_info) {
    
    dir.setup();
    client.setup();
    
    ofAddListener(dir.events.serverAnnounced, this, &SyphonReceiver::serverAnnounced);
    ofAddListener(dir.events.serverRetired, this, &SyphonReceiver::serverRetired);
    
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
}

void SyphonReceiver::setup() {
    
}

void SyphonReceiver::initOsc() {
    
}

void SyphonReceiver::serverAnnounced(ofxSyphonServerDirectoryEventArgs &arg) {
    for( auto& dir : arg.servers ){
        ofLogNotice("Server Announced")<<" Server Name: "<<dir.serverName <<" | App Name: "<<dir.appName;
    }
    dir_index = 0;
}

void SyphonReceiver::serverRetired(ofxSyphonServerDirectoryEventArgs &arg) {
    for( auto& dir : arg.servers ){
        ofLogNotice("Server Retired")<<" Server Name: "<<dir.serverName <<" | App Name: "<<dir.appName;
    }
    dir_index = 0;
}

void SyphonReceiver::update() {
    
}

void SyphonReceiver::draw() {
    begin();
    ofClear(0);
    ofSetColor(255, 255, 255, 255);
    
    if (dir.isValidIndex(dir_index)) {
        client.draw(0, 0, info->screen_size.x, info->screen_size.y);
    }
    end();
}

void SyphonReceiver::windowResized(glm::vec2 size) {
    
}
