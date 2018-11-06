#pragma once

#include "common_settings.h"
#include "BaseScene.h"

class SceneManager {
    BaseScene* current_scene;
    vector<BaseScene> scenes;
    
public:
    SceneManager();
    ~SceneManager();
    
    BaseScene getCurrentScene();
    void setCurrentScene(BaseScene *scene);
    void setCurrentScene(size_t i);

};
