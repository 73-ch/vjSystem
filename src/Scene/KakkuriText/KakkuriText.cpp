#include "KakkuriText.hpp"
KakkuriText::KakkuriText(const BasicInfos *g_info) : BaseScene(g_info) {
    name = "KakkuriText";
    
//    cam.setPosition(0, 100, 200);
//    cam.lookAt(glm::vec3(0));
//    cam.setFarClip(2000);
    
    
    
    current_mode = OF_PRIMITIVE_TRIANGLES;
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
    initOsc();
}

void KakkuriText::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/kakkuri_text/set_text", [&](const string text, const float roughness = 50) {
        setText(text, roughness);
    });

    ofxSubscribeOsc(OF_PORT, "/kakkuri_text/set_index_mode", [&](const int index) {
        setIndexMode(static_cast<KakkuriIndexMode>(index));
    });
    
    ofxSubscribeOsc(OF_PORT, "/kakkuri_text/set_primitive_mode", [&](const int i, const bool auto_index = false){
        setPrimitiveMode(static_cast<ofPrimitiveMode>(i), auto_index);
    });
    
    // camera
    ofxSubscribeOsc(OF_PORT, "/kakkuri_text/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/kakkuri_text/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
}

void KakkuriText::setup() {
}

void KakkuriText::update() {
}

void KakkuriText::draw() {
    begin();
    cam.begin();
    ofClear(0);
    ofSetColor(255);

    ofTranslate(-offset);
    mesh.setMode(current_mode);
    mesh.draw();
    
    cam.end();
    
    end();
}

void KakkuriText::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
}

void KakkuriText::setText(const string text, const float roughness) {
    mesh.clear();
    num_verts.clear();
    line_indices.clear();
    triangle_indices.clear();

    current_text = text;
    current_roughness = roughness;

    auto font_paths = info->font.getStringAsPoints(text);
    ofMesh m;
    for (auto p : font_paths)
    {
        p.setStrokeWidth(20);

        // side
        vector<ofPolyline> outlines = p.getOutline();

        for (auto &l : outlines)
        {
            l = l.getResampledBySpacing(roughness);
            unsigned int len = l.getVertices().size();
            unsigned int start = mesh.getNumVertices();
            num_verts.push_back(len);

            // side verts
            mesh.addVertices(l.getVertices());
            vector<ofIndexType> indices;

            for (unsigned int i = start; i < start + len - 1; ++i)
            {
                line_indices.insert(line_indices.end(), {i, i + 1});

                triangle_indices.insert(triangle_indices.end(), {i, i + 1, i + 2});
            }

            triangle_indices.pop_back();
            triangle_indices.pop_back();
            triangle_indices.pop_back();
        }
    }

    //    mesh.addIndices(line_indices);

    calcOffset();
};

void KakkuriText::calcOffset() {
    auto bounding_box = info->font.getStringBoundingBox(current_text, 0, 0);
    offset = glm::vec3(bounding_box.getWidth(), bounding_box.getHeight(), 0) * .5;
}

void KakkuriText::setPrimitiveMode(const ofPrimitiveMode mode, const bool auto_index) {
    mesh.setMode(mode);
    current_mode = mode;

    if (auto_index)
    {
        switch (mode)
        {
        case OF_PRIMITIVE_TRIANGLES:
            setIndexMode(KAKKURI_INDEX_TRIANGLE);
            break;

        case OF_PRIMITIVE_LINES:
            setIndexMode(KAKKURI_INDEX_LINE);
            break;
        default:
            break;
        }
    }
}

void KakkuriText::setIndexMode(const KakkuriIndexMode mode, vector<ofIndexType> indices) {
    mesh.clearIndices();

    switch (mode)
    {
    case KAKKURI_NO_INDEX:
        mesh.disableIndices();
        break;

    case KAKKURI_INDEX_LINE:
        ofLogNotice() << line_indices.size();
        mesh.addIndices(line_indices);
        break;
    case KAKKURI_INDEX_TRIANGLE:
        mesh.addIndices(triangle_indices);
        break;
    case KAKKURI_INDEX_CUSTOM:
        mesh.addIndices(indices);
        break;
    }
}
