#include "ItanoCircus.h"

//--------------------------------------------------------------
ItanoCircus::ItanoCircus(const BasicInfos* g_info) : BaseScene(g_info){
    name = "ItanoCircus";
    
    trail_shader.load("ItanoCircus/default.vert", "ItanoCircus/default.frag");
    
    
    // effect shader
    fisheye_effect.load("ItanoCircus/default.vert", "ItanoCircus/fisheye.frag");
    
    target_a_position = glm::vec3(ofRandom(-500,500), ofRandom(-500,500),ofRandom(-500,500));
    target_b_position = glm::vec3(ofRandom(-500,500), ofRandom(-500,500),ofRandom(-500,500));
    
    initOsc();
    
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
}

void ItanoCircus::setup() {
    
}

void ItanoCircus::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/itano_circus/clear", [&]() {
        trails_a.clear();
        trails_b.clear();
    });
    ofxSubscribeOsc(OF_PORT, "/itano_circus/add_a", [&](const int num) {
        for (int i = 0; i< num; i++) {
            Trail trail(spawn_point);
            trails_a.push_back(trail);
        }
    });
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/add_b", [&](const int num) {
        for (int i = 0; i< num; i++) {
            Trail trail(target_a_position);
            trails_b.push_back(trail);
        }
    });
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/follow_cam", follow_cam);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/target_a_position", target_a_position);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/target_b_position", target_b_position);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/cam/cam_lookat_noise", cam_lookat_noise);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/cam/position", cam_pos);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/battle_mode", battle_mode);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/spawn_point", spawn_point);
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "shader_art fs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/itano_circus/time_scale", time_scale);
    ofxSubscribeOsc(OF_PORT, "/itano_circus/chase_b", chase_b);
}

//--------------------------------------------------------------
void ItanoCircus::update(){
    const float time = ofGetElapsedTimef();
    const float span = (time - before_time) * 10. * time_scale;
    
    for (auto t = trails_a.begin(); t != trails_a.end();) {
        if (t->update(before_time, target_a_position, target_a_velocity)) {
            t = trails_a.erase(t);
        } else {
            t++;
        }
    }
    
    for (auto t = trails_b.begin(); t != trails_b.end();) {
        if (t->update(before_time, target_b_position, target_b_velocity)) {
            t = trails_b.erase(t);
        } else {
            t++;
        }
    }
    
    
    //    fisheye_effect.load("default.vert", "fisheye.frag");
    target_a_velocity = glm::vec3(sin(time), cos(time), cos(time)) * 100.;
    target_a_position += target_a_velocity * span;
    
    if (chase_b) {
        target_b_velocity = glm::vec3(sin(time), cos(time), cos(time)) * 100.;
    } else {
        target_b_velocity = glm::vec3(cos(time), sin(sin(time) * PI * 2.), cos(time)) * 100.;
    }
    
    target_b_position += target_a_velocity * span;
    
    
    
    if (follow_cam) {
        if (battle_mode) {
            cam.setPosition(glm::mix(target_a_position + target_a_velocity* 2.0, target_a_position + target_a_velocity* 2.0, 0.5) + (glm::vec3(ofNoise(cam_seeds.x, time * 0.2), ofNoise(cam_seeds.y, time * 0.2), ofNoise(cam_seeds.z, time * 0.2)) * 100 - glm::vec3(50)));
            cam.lookAt(glm::mix(target_a_position, target_b_position, 0.5) + (glm::vec3(ofNoise(time * 0.2,cam_seeds.x), ofNoise(time * 0.2, cam_seeds.y), ofNoise(time * 0.2,cam_seeds.z)) * 100 - glm::vec3(50)) * cam_lookat_noise);
        } else {
            cam.setPosition(target_a_position + target_a_velocity * 2.0 + (glm::vec3(ofNoise(cam_seeds.x, time * 0.2), ofNoise(cam_seeds.y, time * 0.2), ofNoise(cam_seeds.z, time * 0.2)) * 100 - glm::vec3(50)));
            cam.lookAt(target_a_position + (glm::vec3(ofNoise(time * 0.2,cam_seeds.x), ofNoise(time * 0.2, cam_seeds.y), ofNoise(time * 0.2,cam_seeds.z)) * 100 - glm::vec3(50)) * cam_lookat_noise);
        }
        
    }
    
    
    before_time = time;
}

//--------------------------------------------------------------
void ItanoCircus::draw(){
    //    main_fbo.begin();
    //    ofClear(0);
    begin();
    ofClear(0);
    
    glLineWidth(5.0);
    
    float time = ofGetElapsedTimef();
    auto cam_pos = cam.getPosition();
    
    // dev mode
    cam.begin();
    ofSetColor(255);
    trail_shader.begin();
    for (auto& t : trails_a) {
        t.draw();
    }
    
    if (battle_mode) {
        for (auto& t : trails_b) {
            t.draw();
        }
        
    }
    
    trail_shader.end();
    ofSetColor(100,200,255);
    ofSetSphereResolution(2);
    ofDrawSphere(target_a_position, 50);
    if (battle_mode) {
        ofSetColor(255,200,100);
        ofDrawSphere(target_b_position, 50);
    }
    
    ofSetColor(255);
    
    cam.end();
    end();
    
    glLineWidth(1.0);
    ofSetSphereResolution(24);
}

//--------------------------------------------------------------
void ItanoCircus::windowResized(glm::vec2 size) {
//    main_fbo.allocate(size.x, size.y);
    BaseScene::windowResized(size);
}

void ItanoCircus::reloadShader() {
    const string b_vs = trail_shader.getShaderSource(GL_VERTEX_SHADER);
    const string b_fs = trail_shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    bool result = trail_shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    
    if (!result) {
        trail_shader.setupShaderFromSource(GL_VERTEX_SHADER, b_vs);
        vertex_text = b_vs;
    }
    
    result = trail_shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    
    if (!result) {
        trail_shader.setupShaderFromSource(GL_FRAGMENT_SHADER, b_fs);
        fragment_text= b_fs;
    }
    
    trail_shader.bindDefaults();
    trail_shader.linkProgram();
}
