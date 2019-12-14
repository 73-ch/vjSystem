#include "ofMain.h"
#include "ofApp.h"
#include "ofAppGLFWWindow.h"

//========================================================================
int main( ){
    int mode;
    if (getenv("SELECT_MODE_DISABLE")) {
        mode = 0;
    } else {
        cout << "choose window mode (0: main, 1: main&preview)" << endl;
        cin >> mode;
    }
    
    // システム環境設定で、ウィンドウの配置も行いつつ、調整を行う
    ofGLFWWindowSettings settings;
    settings.setGLVersion(3, 2);
    
    if (mode == 1 || mode == 2) {
        int main_width, main_height, prev_width, prev_height;
        int main_pos_x, main_pos_y, prev_pos_x, prev_pos_y;
        
        
    }
    
    if (mode == 1) {
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
        ofSetFullscreen(true);
        ofRunApp(mainWindow,mainApp);        
    } else {
        settings.setSize(1024,768);
        ofCreateWindow(settings);
        ofRunApp(new ofApp());
    }

    ofRunMainLoop();
}
