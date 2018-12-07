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

vec2 st = vec2(gl_FragCoord.x, u_resolution.y - gl_FragCoord.y);

out vec4 outputColor;

void main() {
    vec3 final;
    vec2 diff = vec2(seeds.x * 10.);
    // st.x += sin(seeds.x) * 10.;
    // st.y += cos(st.x/ u_resolution.x * PI + time) * 10. * seeds.y;

    if (s_opacity0 > 0.0) {
        // final += texture(s_texture0, st).xyz * s_opacity0;
        final.r += texture(s_texture0, st + diff).r * s_opacity0;
        final.g += texture(s_texture0, st).g * s_opacity0;
        final.b += texture(s_texture0, st - diff).b * s_opacity0;
    }
    if (s_opacity1 > 0.0) {
        // final += texture(s_texture1, st).xyz * s_opacity1;
        final.r += texture(s_texture1, st + diff).r * s_opacity1;
        final.g += texture(s_texture1, st).g * s_opacity1;
        final.b += texture(s_texture1, st - diff).b * s_opacity1;
    }
    if (s_opacity2 > 0.0) {
        // final += texture(s_texture2, st).xyz * s_opacity2;
        final.r += texture(s_texture2, st + diff).r;
        final.g += texture(s_texture2, st).g;
        final.b += texture(s_texture2, st - diff).b;
    }
    
    for (int i = 0; i < 9; i++) {
        final.r += texture(s_texture1, st + vec2(i%3, floor(i/3.)) * seeds.y + diff).r;
        final.g += texture(s_texture1, st + vec2(i%3, floor(i/3.)) * seeds.y).g;
        final.b += texture(s_texture1, st + vec2(i%3, floor(i/3.)) * seeds.y - diff).b;
    }
    // final *= 0.1;
    outputColor = vec4(final, 1.0);
}