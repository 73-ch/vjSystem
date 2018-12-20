#version 150
#define LIGHT_NUM 5

in vec4 position;
in vec4 normal;
in vec4 color;
in vec2 texcoord;
uniform mat4 mMatrix;
uniform mat4 mvpMatrix;
uniform mat4 tMatrix[LIGHT_NUM];
uniform mat4 lgtMatrix[LIGHT_NUM];
out vec4 vPosition;
out vec3 vNormal;
out vec4 vColor;
out vec4 vTexCoord[LIGHT_NUM];
out vec4 vDepth[LIGHT_NUM];


void main() {
    vPosition = (mMatrix * position);
    vNormal = normal.xyz;
    vColor = color;
    for (int i = 0; i < LIGHT_NUM; i++) {
        vTexCoord[i] = tMatrix[i] * vPosition;
        vDepth[i] = lgtMatrix[i] * vPosition;
    }
    
    gl_Position = mvpMatrix * position;
}                   