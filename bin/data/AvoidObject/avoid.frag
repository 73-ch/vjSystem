#version 330

in vec3 v_color;
in vec3 v_normal;
in vec3 v_position;

out vec4 out_color;

void main() {
    out_color = vec4(v_color, 1.0);    
}