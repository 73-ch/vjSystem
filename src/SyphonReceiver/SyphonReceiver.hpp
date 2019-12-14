#ifndef SyphonReceiver_hpp
#define SyphonReceiver_hpp

#include <stdio.h>

#include "common_settings.h"
#include "BaseScene.h"
#include "ofxSyphon.h"

class SyphonReceiver : public BaseScene {
    void reloadShader();
    //    void changeVertexNum(const unsigned int num);
    
    ofxSyphonServerDirectory dir;
    ofxSyphonClient client;
    int dir_index;
    
    void serverAnnounced(ofxSyphonServerDirectoryEventArgs &arg);
    void serverRetired(ofxSyphonServerDirectoryEventArgs &arg);
    
public:
    SyphonReceiver(const BasicInfos* g_info);
    
    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;
    
    void windowResized(glm::vec2 size) override;
};

#endif /* SyphonReceiver_hpp */
