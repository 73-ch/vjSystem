#pragma once

#include "ofMain.h"
#include "ofxOsc.h"
#include "ofxPubSubOsc.h"

#define OF_PORT 3884

#define MAX_HOST "localhost"
#define MAX_PORT 4729

#define DEFAULT_VERTEX "#version 150\nuniform mat4 modelViewProjectionMatrix;in vec4 position;in vec2 texcoord;out vec2 v_texcoord;void main(){gl_Position = modelViewProjectionMatrix * position;v_texcoord = texcoord;}"
#define DEFAULT_FRAGMENT "#version 150\nout vec4 outputColor;void main(){outputColor = vec4(.0);}"

struct BasicInfos { 
    float time;
    glm::vec2 screen_size;
    ofTrueTypeFont font;
};
