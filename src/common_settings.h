#pragma once

#include "ofMain.h"
#include "ofxOsc.h"
#include "ofxPubSubOsc.h"
#include "BaseScene.h"

#define OF_PORT 3884

#define MAX_HOST "127.0.0.1"
#define MAX_PORT 4729

#define DEFAULT_VERTEX "#version 150\nuniform mat4 modelViewProjectionMatrix;in vec4 position;void main(){gl_Position = modelViewProjectionMatrix * position;}"
#define DEFAULT_FRAGMENT "#version 150\nout vec4 outputColor;void main(){outputColor = vec4(.0);}"
