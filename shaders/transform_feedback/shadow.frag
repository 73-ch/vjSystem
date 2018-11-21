#version 330
in vec3 v_position;
in vec4 v_color;
uniform vec4 seed;

out vec4 fragColor;

void main () {
    fragColor = v_color;
}