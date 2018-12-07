#include "FeedbackObject.h"

FeedbackObject::FeedbackObject(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "FeedbackObject";
    
    initOsc();
    
    fbo[0].allocate(ofGetWidth(), ofGetHeight());
    fbo[1].allocate(ofGetWidth(), ofGetHeight());
    fbo[1].begin();
    ofClear(0);
    fbo[1].end();
    

    ofLoadImage(ableton_logo, "FeedbackObject/ableton_logo.png");
    ofLoadImage(max_logo, "FeedbackObject/max.png");
    ofLoadImage(ableton, "FeedbackObject/ableton.png");
    ofLoadImage(window1, "FeedbackObject/ableton_window.png");
    ofLoadImage(window2, "FeedbackObject/ableton_window2.png");
    
}

void FeedbackObject::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/feedback_obj/clear_fbo", [&](){windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));});
    
    ofxSubscribeOsc(OF_PORT, "/feedback_obj/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/feedback_obj/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/feedback_obj/feedback_color", feedback_color);
    ofxSubscribeOsc(OF_PORT, "/feedback_obj/base_color", base_color);
    
    ofxSubscribeOsc(OF_PORT, "/feedback_obj/draw_obj", [&](const int i){
        draw_obj = static_cast<DrawObj>(i);
    });
}

void FeedbackObject::setup() {
    
}

void FeedbackObject::update() {
    
}

void FeedbackObject::draw() {
    begin();
    
    fbo[0].begin();
    ofClear(0);
    
    ofSetColor(feedback_color.r, feedback_color.g, feedback_color.b, feedback_color.a);
    ofDrawRectangle(0, 0, fbo[0].getWidth(), fbo[0].getHeight());
    ofLogNotice() << feedback_color;
    fbo[1].draw(0,0);
    ofPushMatrix();
    cam.begin();
    ofSetColor(255, 255, 255, 255);
    ofTranslate(glm::vec3(ofNoise(info->time)*100.,((int)glm::fract(info->time)%20)*10., glm::mod(info->time, 1000.f)-500.f));
    ofRotateRad(info->time, ofNoise(sin(info->time)), sin(info->time), floor(info->time));
    
    glm::vec3 col = glm::vec3(ofNoise(info->time)*.5+(sin(info->time)+1.)*.25, abs(sin(info->time)), 0.9) + base_color;
    col*=255;
    
    ofLogNotice() << col;
    
    ofSetColor(col.x, col.y, col.z);
    
    ofBoxPrimitive box;
    box.set(10);
    
    ofSpherePrimitive sphere;
    sphere.set(10, 24);
    
    switch (draw_obj) {
        case BOX_MESH:
            ofScale(glm::vec3(sin(info->time)*100., cos(sin(info->time))*100., tan(cos(info->time))*100.));
            box.draw(OF_MESH_FILL);
            break;
        case BOX_WIREFRAME:
            ofScale(glm::vec3(sin(info->time)*100., cos(sin(info->time))*100., tan(cos(info->time))*100.));
            box.draw(OF_MESH_WIREFRAME);
            break;
        case SPHERE_MESH:
            ofScale(glm::vec3(sin(info->time)*100., cos(sin(info->time))*100., tan(cos(info->time))*100.));
            sphere.draw(OF_MESH_FILL);
            break;
        case SPHERE_WIREFRAME:
            ofScale(glm::vec3(sin(info->time)*100., cos(sin(info->time))*100., tan(cos(info->time))*100.));
            sphere.draw(OF_MESH_WIREFRAME);
            break;
        case ABLETON_LOGO:
            ableton_logo.draw(100, 100);
            break;
        case MAX:
            max_logo.draw(100, 100);
            break;
        case ABLETON:
            ableton.draw(100, 100);
            break;
        case WINDOW1:
            window1.draw(100, 100);
            break;
        case WINDOW2:
            window2.draw(100, 100);
            break;
        default:
            break;
    }
    
    
    cam.end();
    ofPopMatrix();
    fbo[0].end();
    
    std::swap(fbo[0], fbo[1]);

    ofPushMatrix();
    fbo[1].draw(0, 0);
    
    // debug
    //    fbo[0].draw(0, 0,200, 100);
    ofPopMatrix();
    
    end();
}


void FeedbackObject::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    
    fbo[0].allocate(ofGetWidth(), ofGetHeight());
    fbo[1].allocate(ofGetWidth(), ofGetHeight());
    fbo[0].begin();
    ofClear(0);
    fbo[0].end();
    fbo[1].begin();
    ofClear(0);
    fbo[1].end();
}
