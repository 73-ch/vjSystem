#version 150
in vec4 vPosition;
in vec4 vColor;
uniform float clipD;
out vec4 outColor;
void main(void){
    outColor = vec4(vec3(vPosition.z / clipD), 1.0);
}