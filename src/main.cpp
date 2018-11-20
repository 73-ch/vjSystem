#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
    
    // システム環境設定で、ウィンドウの配置も行いつつ、調整を行う
    ofGLWindowSettings settings;
    settings.setGLVersion(3, 2);
    settings.setPosition(glm::vec2(2880, 0));// 自分のパソコンを考慮したポジション
    settings.setSize(1920, 1080);// ここに会場のプロジェクターの解像度
    ofCreateWindow(settings);

//    ofSetFullscreen(true);
    

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(new ofApp());
}
