#version 410

in vec4 position;
in vec2 texcoord;
uniform mat4 modelViewProjectionMatrix;
uniform vec2 resolution;

void main() {
    gl_Position = modelViewProjectionMatrix * position;

}