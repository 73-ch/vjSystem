#include "ofMain.h"
#include "ofApp.h"
#include "ofAppGLFWWindow.h"

//========================================================================
int main( ){
    
    // システム環境設定で、ウィンドウの配置も行いつつ、調整を行う
    ofGLFWWindowSettings settings;
    settings.setGLVersion(3, 2);
    
    settings.setSize(720, 450);
    shared_ptr<ofAppBaseWindow> prevWindow = ofCreateWindow(settings);
    prevWindow->setVerticalSync(false);
    
    settings.setPosition(glm::vec2(1920, 0));// 自分のパソコンを考慮したポジション
    settings.setSize(1280, 720);// ここに会場のプロジェクターの解像度
    settings.decorated = false;
    settings.shareContextWith = prevWindow;
    
    shared_ptr<ofAppBaseWindow> mainWindow = ofCreateWindow(settings);
    mainWindow->setVerticalSync(false);
    mainWindow->setFullscreen(true);
    
    settings.setPosition(glm::vec2(0));
    
    shared_ptr<ofApp> mainApp(new ofApp);
    mainApp->setup();
//    ofAddListener(prevWindow->events().draw, mainApp.get(), &ofApp::drawPrev);
    ofAddListener(prevWindow->events().draw,mainApp.get(),&ofApp::drawPrev);
    

//    ofSetFullscreen(true);
    

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(mainWindow,mainApp);
    ofRunMainLoop();
}
