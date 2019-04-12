#version 330

uniform float time;
uniform vec2 u_resolution;
uniform vec4 seed;

out vec4 output_color;

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
    vec2 st = (gl_FragCoord.xy - u_resolution*.5) / u_resolution.y;
    // st.x += time;
    st.x = abs(st.x) * fract(st.y*10.);
    
    float u_time = time + st.y*100.;

    vec3 final;
    vec2 diff;
    diff.y = cos(u_time + fract(st.x * 10. + length(st)));

    final.r = pow(noise(st + diff * sin(u_time))*1.2, 2.);
    final.g = noise(st*diff)*1.2;
    final.b = noise(st - diff)*1.2;
    final += vec3(0.4);
    final = 1.0 -pow(normalize(final) * (1.0 - length(st)), vec3(2.0));

    output_color = vec4(final, 1.0);
}
