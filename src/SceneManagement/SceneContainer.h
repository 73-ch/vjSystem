#pragma once

#include "common_settings.h"

class SceneContainer {
    BaseScene* target_scene;
    float opacity;
    bool attached = false;
    
public:
    SceneContainer();
    void update();
    void drawScene();
    void drawFbo();
    ofFbo* getFbo();
    void setOpacity(const float g_opacity);
    const float getOpacity() const;
    
    bool judgeRender();
    
    void setScene(BaseScene* g_scene);
    BaseScene* getScene();
    
    void windowResized(glm::vec2 size);
};
