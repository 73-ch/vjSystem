#version 330
uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform sampler2DRect before_texture;
uniform float s_opacity0;
uniform float s_opacity1;
uniform float s_opacity2;

uniform vec2 u_resolution;
uniform vec4 seeds;
uniform float time;

vec2 st = gl_FragCoord.xy;

out vec4 outputColor;

float random (in vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {
    vec3 final;
    vec2 diff = vec2(seeds.x * 10.);

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
    vec3 n_final = mix(final, 1.0 - texture(before_texture,st).yxz, seeds.x*10. + 0.75);
    
        n_final = pow(n_final, vec3(21.0));
        n_final.r *= 0.3 + seeds.x;
        n_final  = clamp(n_final,vec3(0.35), vec3(0.65));
    final = mix(final, n_final,0.4);
    
    // final = final.gbr;
    
    
    
    outputColor = vec4(final, 1.0);
}