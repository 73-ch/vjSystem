#version 330

uniform vec2 u_resolution;

out vec4 out_color;

void main () {
    vec2 st = gl_FragCoord.xy / u_resolution;
    out_color = vec4(st, 1.0, 1.0);
}

