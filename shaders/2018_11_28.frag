#version 330
uniform float time;
uniform vec2 u_resolution;
uniform vec4 seed;
out vec4 output_color;

#define PI 3.14159265359

vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}

// Value Noise by Inigo Quilez - iq/2013
// https://www.shadertoy.com/view/lsf3WH
float noise(vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);
    
    vec2 u = f*f*(3.0-2.0*f);
    
    return mix( mix( dot( random2(i + vec2(0.0,0.0) ), f - vec2(0.0,0.0) ),
                    dot( random2(i + vec2(1.0,0.0) ), f - vec2(1.0,0.0) ), u.x),
               mix( dot( random2(i + vec2(0.0,1.0) ), f - vec2(0.0,1.0) ),
                   dot( random2(i + vec2(1.0,1.0) ), f - vec2(1.0,1.0) ), u.x), u.y);
}

void main() {
    vec2 pos = vec2(0.5) - gl_FragCoord.xy/u_resolution;
    float r = length(pos)*2.0;
    float a = atan(pos.y,pos.x);

    vec3 final = vec3(max(sin(a * 150.), 0.)) * 0.3  + 0.1;
    final += smoothstep(-0.7, -0.4, -r);
    // final.r = cos(a*50.*mod(time, PI* 2.));
    // final.g = sin(a*50.*mod(time, PI* 2.));
    // final.b = tan(a*20.*mod(time, PI* 2.));
    output_color = vec4(final, 1.0);
}