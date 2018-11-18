#version 330
in vec3 v_position;
uniform vec4 seed;

out vec4 fragColor;

void main (void) {
    fragColor = vec4(vec3(seed.xyz),1.0);
}