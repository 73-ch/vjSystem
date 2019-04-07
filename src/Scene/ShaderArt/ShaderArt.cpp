#include "ShaderArt.h"

ShaderArt::ShaderArt(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "ShaderArt";
    plotter = *new CodePlotter(g_info);
    
    vertex_text = DEFAULT_VERTEX;
    fragment_text = DEFAULT_FRAGMENT;
    
    initOsc();
    
    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
    
}

void ShaderArt::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/shader_art/vertex", [=](const string &vert) {
        vertex_text = vert;
        reloadShader();
        ofLogNotice() << "shader_art vs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/shader_art/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "shader_art fs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/shader_art/seed", seed);
}

void ShaderArt::setup() {
    
}

void ShaderArt::update() {
    plotter.update();
}

void ShaderArt::draw() {
    begin();
    ofClear(0);
    
    shader.begin();
    
    shader.setUniform4f("seed", seed);
    shader.setUniform1f("time", info->time);
    shader.setUniform2f("u_resolution", info->screen_size);
    
    ofSetColor(255);
    plane.draw();
    shader.end();
    end();
}

void ShaderArt::reloadShader() {
    const string b_vs = shader.getShaderSource(GL_VERTEX_SHADER);
    const string b_fs = shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    bool result = shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_VERTEX_SHADER, b_vs);
        vertex_text = b_vs;
    }
    
    result = shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_FRAGMENT_SHADER, b_fs);
        fragment_text= b_fs;
    }
    
    shader.bindDefaults();
    shader.linkProgram();
    
    plotter.setText(fragment_text);
}

void ShaderArt::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    plane.set(size.x*2., size.y*2.);
}
