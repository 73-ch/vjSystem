#include "Trail.hpp"

Trail::Trail(glm::vec3 spawn_pos) {
    this->path_mode = static_cast<PathMode>((int)ofRandom(3));
    
    box.set(10, 10, 10);
    
    position = spawn_pos;
}

bool Trail::update(float span, glm::vec3 target_pos, glm::vec3 target_dir) {
    const float time = ofGetElapsedTimef();
    
    const float speed = ofNoise(time * 0.1, seeds.w) * .5 + .5;
    
    switch (path_mode) {
        case PathMode::RANDOM:
            velocity = (target_pos - position) * 0.001 * .5 * speed;
            velocity += glm::vec3(ofNoise(seeds.x, time), ofNoise(seeds.y, time), ofNoise(seeds.z, time)) * 0.1;
            break;
            
        case PathMode::STRAIGHT:
            velocity = (target_pos - position) * 0.001 * speed;
            break;
            
        case PathMode::FOLLOW:
            velocity = (target_pos + target_dir - position) * 0.001;
            break;
            
        default:
            break;
    }
    
    
    this->position += this->velocity * span;
    
    
    box.lookAt(velocity);
    //    ofLog() << position << "," << velocity;
    
    line.addVertex(position);
    box.setPosition(position);
    
    //    auto vertices =line.getVertices();
    //
    //    if (vertices.size())
    
    return glm::length(target_pos - position) < 50;
    
}

void Trail::draw() {
    
    ofPushMatrix();
    //    ofTranslate(position);
    ofSetColor(255);
    
    box.draw();
    ofSetColor(255,255,255,255);
    line.draw();
    ofPopMatrix();
}

