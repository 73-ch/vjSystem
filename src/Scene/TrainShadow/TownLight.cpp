#include "TownLight.h"
TownLight::TownLight(ofFbo* g_fbo, ofxShaderTex* g_shader) {
    //    fbo = g_fbo;
    
    shader = g_shader;
    
    float length = 1024;
    
    ofFbo::Settings settings;
    settings.width = length;
    settings.height = length;
    settings.useDepth = true;
    settings.useStencil = false;
    settings.depthStencilAsTexture = false;
    settings.minFilter = GL_LINEAR;
    settings.maxFilter = GL_LINEAR;
    settings.wrapModeVertical = GL_CLAMP_TO_BORDER;
    settings.wrapModeHorizontal = GL_CLAMP_TO_BORDER;
    fbo.allocate(settings);
    
    btm = scale(btm, vec3(fbo.getWidth(), fbo.getHeight(), 1.0f));
    btm = btm * mat4(0.5,0,0,0, 0,0.5,0,0, 0,0,1.0,0, 0.5,0.5,0,1.0);
    
    
    create_at = ofGetElapsedTimef();
    
    position = vec3(150, 100, -500);
    
    light.setNearClip(0.1f);
    light.setFarClip(300.0f);
    light.setPosition(vec3(150, 100, -500));
    light.setFov(50.0f);
    light.lookAt(light.getGlobalPosition() + vec3(-100, 0,0));
    light.rotateDeg(20.0f, vec3(0,0,1));
    light.setAspectRatio(fbo.getWidth() / fbo.getHeight());
    //    light.enableOrtho();
}

bool TownLight::update() {
    float time = (ofGetElapsedTimef() - create_at);
    tm = btm * light.getModelViewProjectionMatrix();
    if (time >= 1) {
        return true;
    } else {
        light.setPosition(vec3(position.x, position.y, time*1000 - 500));
        return false;
    }
}

void TownLight::begin() {
    glEnable(GL_CULL_FACE);
    glEnable(GL_DEPTH_TEST);
    // depthバッファ作成時はフロントにしてあげることでシャドウのギザギザをなくせる、計算誤差の削除
    glCullFace(GL_FRONT);
    
    
    ofEnableDepthTest();
    fbo.begin();
    ofClear(255, 255, 255, 255);
    //    ofPushMatrix();
    
    // depth fbo init
    glClearDepth(1.0);
    glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
    glViewport(0, 0, fbo.getWidth(), fbo.getHeight());
    //
    
    shader->begin();
}

void TownLight::end() {
    shader->end();
    fbo.end();
    //    ofPopMatrix();
    
    //    tex = fbo.getDepthTexture();
    glCullFace(GL_BACK);
}

ofTexture TownLight::getTexture() {
    ofTexture tex;
    tex = fbo.getTexture();
    tex.setTextureWrap(GL_CLAMP_TO_BORDER_ARB, GL_CLAMP_TO_BORDER_ARB);
    return tex;
}

