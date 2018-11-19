#version 150

#define TWO_PI 6.28318530718

uniform float time;
uniform vec2 u_resolution;
uniform vec4 seed;

out vec4 outColor;

vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}

float noise(vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);

    vec2 u = f*f*(3.0-2.0*f);

    return mix( mix( dot( random2(i + vec2(0.0,0.0) ), f - vec2(0.0,0.0) ),
                    dot( random2(i + vec2(1.0,0.0) ), f - vec2(1.0,0.0) ), u.x),
               mix( dot( random2(i + vec2(0.0,1.0) ), f - vec2(0.0,1.0) ),
                   dot( random2(i + vec2(1.0,1.0) ), f - vec2(1.0,1.0) ), u.x), u.y);
}

vec3 genPolygon(in vec2 pol, in int vertex_num, in float size, in vec3 color){
    float d = 0.;
    float a = atan(pol.x, pol.y);
    float r = TWO_PI / float(vertex_num);
    d = exp(floor(.5 + a / r*cos(time)) * pow(mix(0., .3, exp(r - (a + 10.))),3.0)) * length(pol) / size;
    
    return color * vec3(1. - smoothstep(.4, .4001, d));
}

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    st = vec2(cos(st.y + time), sin(st.xy + time));
    float t_time = time * seed.x * 20.;

    st.x += sin(t_time * st.x + st.y) + noise(st);
    vec2 pol = (gl_FragCoord.xy - u_resolution/2.) / u_resolution.y;
//    st.x *= st.y * seed.x;
    
    float final = 0.;
    float c1 = 1., c2 = 1.;
    vec3 poly;

    for (int i = 0; i < 10; i++) {
        if (st.x * seed.y< c2/144.) {
            final = c2/144.;
            poly = genPolygon(pol, int(mod(int(t_time*8. + i-1), 10.)), 1.1, vec3(1.0));
            poly = sin(poly) + cos(time);
            break;
        } else if (i == 9) {
            final = 1.0;
            poly = genPolygon(pol, int(mod(int(t_time*8. + i), 10.)), 1.1, vec3(1.0));
            break;
        }
        float a = c1 + c2;
        c1 = c2;
        c2 = a;
    }
//    vec3 poly = genPolygon(pol, 4, 0.3, vec3(0.3));
    
    outColor = vec4(vec3(final) * poly, 1.0);
//    outColor = vec4(1.0);
}