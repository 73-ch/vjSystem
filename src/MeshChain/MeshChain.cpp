#include "MeshChain.h"

MeshChain::MeshChain(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "MeshChain";
    
    cam_distance = 5000;
    cam.setFarClip(100000);
    cam.setPosition(ofVec3f(0, 0 , cam_distance));
    cam.lookAt(ofVec3f(0));
    
    move_z = -50;
    Chain *chain = new Chain(move_z * 6, cam.getPosition().z - cam_distance);
    
    chains.push_back(*chain);
    
    create_chain = true;
    current_mode = RANDOM;
    
    initOsc();
}

void MeshChain::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/cam/updir", [=](const glm::vec3 updir) {
//        cam.setPosition(pos);
        cam.lookAt(lookat+cam.getPosition());
        cam.setOrientation(updir);
    });
    
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat+cam.getPosition());
    });
    
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/feedback_color", feedback_color);
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/base_color", base_color);
    
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/set_mode", [&](const int mode_num){
        current_mode = static_cast<ChainMode>(mode_num);
        updateMode();
    });
    
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/move_z", move_z, [&](){for (auto& chain: chains) chain.changeSpeed(move_z * 6);});
    
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/remove_chain", [=](){
        if (chains.size() > 1) {
            chains.erase(chains.begin());
        }
    });
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/opacity", opacity);
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/noise_power", [&](const float power){for (auto& chain : chains) chain.changeNoisePower(power);});
    
    ofxSubscribeOsc(OF_PORT, "/mesh_chain/add_chain", [=](){
        addChain();
    });
    

}

void MeshChain::setup() {
    
}

void MeshChain::update() {
    
    
    for (int i = 0; i < chains.size(); i++) {
        chains[i].update();
    }
    
    select_point = floor(ofGetFrameNum() / 6);
    cam.move(0, 0, move_z);
    
//    if(isnan(opacity))opacity = ofNoise(ofRandom(1.2) * ofGetFrameNum()) * 10;
}

void MeshChain::draw() {
    begin();
    ofClear(0);
    cam.begin();
    for (int i  = 0; i < chains.size(); i++) {
        chains[i].changeOpacity(ofMap(exp(opacity / 10), 0, 10, 30, 255));
        ofPushMatrix();
        ofTranslate(chains[i].position.x, chains[i].position.y);
        chains[i].draw();
        ofPopMatrix();
    }
    cam.end();
    end();
}

void MeshChain::updateMode() {
    switch(current_mode) {
        case LINES:
            for (auto& chain : chains) {
                chain.changeMode(OF_PRIMITIVE_LINES);
            }
            break;
        case LINE_STRIP:
            for (auto& chain : chains) {
                chain.changeMode(OF_PRIMITIVE_LINE_STRIP);
            }

            break;
        case TRIANGLES:
            for (auto& chain : chains) {
                chain.changeMode(OF_PRIMITIVE_TRIANGLES);
            }
            break;
        case RANDOM:
            for (auto& chain : chains) {
                chain.changeMode(Chain::getRandomMode());
            }
            break;
        default:
            break;
    }
    
    
}

void MeshChain::addChain() {
    ofPrimitiveMode tmp_mode;
    
    auto new_chain = new Chain(move_z * 6, cam.getPosition().z - cam_distance);
    
    switch(current_mode) {
        case LINES:
            new_chain->changeMode(OF_PRIMITIVE_LINES);
            break;
        case LINE_STRIP:
            new_chain->changeMode(OF_PRIMITIVE_LINE_STRIP);
            break;
        case TRIANGLES:
            new_chain->changeMode(OF_PRIMITIVE_TRIANGLES);
            break;
        case RANDOM:
            new_chain->changeMode(Chain::getRandomMode());
            break;
        default:
            break;
    }
    
    chains.push_back(*new_chain);
}


void MeshChain::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
}
