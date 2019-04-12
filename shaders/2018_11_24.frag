#version 330

uniform float time;
uniform vec2 u_resolution;
uniform vec3 seeds;
out vec4 output_color;

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    output_color = vec4(st, 1., 1.);
}
