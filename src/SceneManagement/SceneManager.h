#pragma once

#include "common_settings.h"
#include "BaseScene.h"
#include "SceneContainer.h"

// Scenes
#include "ShaderArt.h"
#include "VertexArt.h"
#include "TestScene.h"
#include "Instancing.h"
#include "FeedbackObject.h"
#include "MeshChain.h"
#include "RainDrop.h"
#include "TrainShadow.h"
#include "AvoidObject.h"
#include "KakkuriText.hpp"
#include "PhysicsLyric.hpp"

#define MAX_SCENES 3

class SceneManager {
    BaseScene* current_scene;
    // コンストラクタだけ呼び出して格納
    map<string, BaseScene*> stored_scenes;
    // 実際に動かしてる部分
    array<SceneContainer*, MAX_SCENES> scene_containers;
    
    void initOsc();
    
public:
    SceneManager(){};
    SceneManager(BasicInfos* g_info);
    ~SceneManager();
    
    void update();
    void drawScene();
    void drawFbo();
    ofFbo* getFbo(size_t i);
    void attachUniforms(ofShader& shader);
    
    BaseScene getCurrentScene();
    void setScene(size_t i, BaseScene *scene);
    BaseScene * getSceneByName(const string name);
    
    void windowResized(glm::vec2 size);
};
