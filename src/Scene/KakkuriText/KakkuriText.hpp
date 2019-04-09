#pragma once

#include "common_settings.h"
#include "BaseScene.h"

enum KakkuriIndexMode
{
    KAKKURI_NO_INDEX,
    KAKKURI_INDEX_LINE,
    KAKKURI_INDEX_TRIANGLE,
    KAKKURI_INDEX_CUSTOM
};

class KakkuriText : public BaseScene
{
    glm::vec3 offset;
    ofMesh mesh;
    string current_text;
    float current_roughness = 5;

    vector<ofIndexType> line_indices;
    vector<ofIndexType> triangle_indices;
    vector<unsigned int> num_verts;
    ofPrimitiveMode current_mode;
    
    ofEasyCam cam;
    glm::vec3 lookat;
    
    void calcOffset();
    void reloadShader();
    void setText(const string text, const float roughness);
    void setPrimitiveMode(const ofPrimitiveMode mode, const bool auto_index = false);
    void setIndexMode(const KakkuriIndexMode mode, vector<ofIndexType> indices = vector<ofIndexType>{});

  public:
    KakkuriText(const BasicInfos *g_info);

    void setup() override;
    void initOsc() override;
    void update() override;
    void draw() override;

    void windowResized(glm::vec2 size) override;
};
