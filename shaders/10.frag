#version 150

#define PI 3.14159265359
#define TWO_PI 6.28318530718

uniform vec2 u_resolution;
uniform float time;
uniform vec4 seed0;

out vec4 outColor;

vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}

float square (float i) {;
    return step(mod(i, PI)*2. -PI, .0) * 2. -1.;
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
    vec2 st = (gl_FragCoord.xy - u_resolution * .5) / u_resolution * 2.;
    
//    st.x = (cos(st.y + time) + sin(st.x + time))*.5;
//    st.y = (cos(st.x + time) + sin(st.y + time))*.5;
    
    // noise(vec2(time, 0.3474))
    
    st.x *= 100.0 * (seed0.x) * (1. -seed0.y);

    
    vec3 res;
    
    float s_time = time*1.8 + noise(vec2(time - seed0.x, 0.34343))*0.3;
    
    for (int i = 0; i < 20; i++) {
        st.x += 0.05;
        float a = sin(st.x +s_time)/st.y*0.8;
        a+= noise(vec2(seed0.x*.2, st.x));
        res += vec3(step(a, 1.04) - step(a, 0.96), step(a, 1.03) - step(a, 0.97), step(a, 1.02) - step(a, 0.968));
    }
    
    outColor = vec4(res,1.0);
}
