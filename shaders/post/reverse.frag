#version 330
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

    st = abs(st-u_resolution * vec2(.5));

    float sum_opacity = max(s_opacity0 + s_opacity1 + s_opacity2, 1.0);
    

    if (s_opacity0 > 0.0) {
        final += texture(s_texture0, st).xyz * s_opacity0 / sum_opacity;
    }
    if (s_opacity1 > 0.0) {
        final += texture(s_texture1, st).xyz * s_opacity1 / sum_opacity;
    }
    if (s_opacity2 > 0.0) {
        final += texture(s_texture2, st).xyz * s_opacity2 / sum_opacity;
    }
    
    outputColor = vec4(final, 1.0);
}