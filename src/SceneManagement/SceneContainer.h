#pragma once

#include "common_settings.h"

class SceneContainer {
    BaseScene* target_scene;
    float opacity;
    
public:
    SceneContainer();
    void update();
    void drawScene();
    void drawFbo();
    void setOpacity(const float g_opacity);
    
    void setScene(BaseScene* g_scene);
    BaseScene* getScene();
    
    bool attached = false;
};
