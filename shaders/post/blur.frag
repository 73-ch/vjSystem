#version 330
#define PI 3.14159265358979
uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform float s_opacity0;
uniform float s_opacity1;
uniform float s_opacity2;

uniform vec2 u_resolution;
uniform vec4 seeds;
uniform float time;

vec2 st = gl_FragCoord.xy;

out vec4 outputColor;

void main() {
    vec3 final;
    // st.x += sin(seeds.x) * 10.;
    // st.y += cos(st.x/ u_resolution.x * PI + time) * 10.;
    vec2 diff = vec2(seeds.x * 10.);
    if (s_opacity0 > 0.0) {
        for (int i = 0; i < 9; i++) {
            final.r += texture(s_texture0, st + vec2(i%3, floor(i/3.)) + diff).r * .0625*(mod(i,1.0)+1.);
            final.g += texture(s_texture0, st + vec2(i%3, floor(i/3.))).g * .0625*(mod(i,1.0)+1.);
            final.b += texture(s_texture0, st + vec2(i%3, floor(i/3.)) - diff).b * .0625*(mod(i,1.0)+1.);
        }
    }
    if (s_opacity1 > 0.0) {
        for (int i = 0; i < 9; i++) {
            final.r += texture(s_texture1, st + vec2(i%3, floor(i/3.)) + diff).r;
            final.g += texture(s_texture1, st + vec2(i%3, floor(i/3.))).g;
            final.b += texture(s_texture1, st + vec2(i%3, floor(i/3.)) - diff).b;
        }
    }
    if (s_opacity2 > 0.0) {
        for (int i = 0; i < 9; i++) {
            final.r += texture(s_texutre2, st + vec2(i%3, floor(i/3.)) + diff).r;
            final.g += texture(s_texutre2, st + vec2(i%3, floor(i/3.))).g;
            final.b += texture(s_texutre2, st + vec2(i%3, floor(i/3.)) - diff).b;
        }
    }
    
    
    // final *= 0.1;
    outputColor = vec4(final, 1.0);
}