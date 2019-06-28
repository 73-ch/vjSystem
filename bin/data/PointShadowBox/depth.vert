#version 330 core
in vec4 position;

uniform mat4 model;

void main() {
    gl_Position = model * vec4(position.xyz, 1.0);
}
