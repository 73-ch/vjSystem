#pragma once

#include "common_settings.h"
#include "SceneContainer.h"

// Scenes
#include "ShaderArt.h"

#define MAX_SCENES 3

class SceneManager {
    BaseScene* current_scene;
    // コンストラクタだけ呼び出して格納
    map<string, BaseScene*> stored_scenes;
    // 実際に動かしてる部分
    array<SceneContainer*, MAX_SCENES> scene_containers;
    
    void initOsc();
    
public:
    SceneManager();
    ~SceneManager();
    
    void update();
    void drawScene();
    void drawFbo();
    
    BaseScene getCurrentScene();
    void setScene(size_t i, BaseScene *scene);
    BaseScene * getSceneByName(const string name);
};