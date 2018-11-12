#pragma once

#include "common_settings.h"

#include "SceneManager.h"

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();
    
        void initOsc();
    
		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
    ofxOscReceiver receiver;
    SceneManager manager;
    
    ofShader post_processing;
    string pvs_text;
    string pfs_text;
    
    glm::vec4 seeds;
    
    glm::vec2 screen_size;
    
    ofPlanePrimitive screen_plane;
    
    ofImage image;
};
