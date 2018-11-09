//
//  SceneContainer.cpp
//  vjSystem
//
//  Created by nami on 2018/11/06.
//

#include "SceneContainer.h"

SceneContainer::SceneContainer() {
    attached = false;
}

void SceneContainer::setOpacity(const float g_opacity) {
    opacity = g_opacity;
};

void SceneContainer::setScene(BaseScene* g_scene) {
    delete target_scene;
    
    target_scene = g_scene;
    attached = true;
};

void SceneContainer::update() {
    if (attached) {
        target_scene->update();
    };
}

void SceneContainer::drawScene() {
    if (attached) {
        ofPushMatrix();
        ofPushView();
        ofPushStyle();
        target_scene->draw();
        ofPopStyle();
        ofPopView();
        ofPopMatrix();
    };
}

void SceneContainer::drawFbo() {
    if (attached) {
        ofSetColor(255,255,255, opacity);
        target_scene->getFbo()->draw(glm::vec2(0.));
    };
}

BaseScene* SceneContainer::getScene() {
    return target_scene;
};

