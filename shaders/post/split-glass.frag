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
out vec4 outputColor;

float rnd(vec2 p){return fract(sin(dot(p,vec2(15.79,81.93))*45678.9123));}
float noise(vec2 p){vec2 i=floor(p);vec2 f=fract(p);f=f*f*(3.-2.*f);return mix(mix(rnd(i+vec2(0.,0.)),rnd(i+vec2(1.,0.)),f.x),mix(rnd(i+vec2(0.,1.)),rnd(i+vec2(1.,1.)),f.x),f.y);}
float fbm(vec2 uv,float d){float sum=0.;float amp=.7;for(int i=0;i<4;++i){sum+=noise(uv)*amp;uv+=uv*d;amp*=.4;}return sum;}

void main() {
    vec3 final;
    vec2 b_st = gl_FragCoord.xy / u_resolution;
    float divide = 100.;
    vec2 st = (fract(b_st * divide) + floor(b_st * divide + fbm(vec2(seeds.x, b_st.y), 1.2)))/ divide * u_resolution;


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