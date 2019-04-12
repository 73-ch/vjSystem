#version 330
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float time;
uniform vec3 sound;
uniform vec4 seed;

out vec4 outColor;

#define PI 3.14159265358979323846

vec2 tile(vec2 _st, vec2 _zoom, out vec2 pos){
    _st *= _zoom;
    pos = ceil(_st);
    return fract(_st);
}

float random (vec2 st){
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

void main(void){
    float u_time = time;

    vec2 st = gl_FragCoord.xy/u_resolution.xy;
    vec3 color = vec3(0.0);

    vec2 u_seed = seed.xy + vec2(0.3);


    // Divide the space in 4
    vec2 pos;
    vec2 stg;
    vec2 stb;
    float speed = (u_seed.x / u_resolution.x - 0.5) * 2.;
    pos = ceil(st * vec2(1, 4.));
    stg = st;
    stb = st;


//patern1
    // st.x += mod(u_time, 10.) * sign(mod(pos.y, 2.)- .9) * speed;
    // st = tile(st,vec2(1., 4.), pos);
    // st.x = floor(st.x * 500. * u_seed.y / u_resolution.y);

    // float rnd = step(.5, random(vec2(st.x, pos.y)));
    // color = vec3(1. * rnd);


// patern2
//    st.x += mod(u_time/4., 10.) * sign(mod(pos.y, 2.)- .9) * speed;
//    st = tile(st,vec2(1., 4.), pos);
//    st.x = floor(st.x * 500. * u_seed.y / u_resolution.y);
//
//    float rnd = step(.5, random(vec2(st.x - .01, pos.y)));
//    color.r = 1. * rnd;
//    rnd = step(.5, random(vec2(st.x, pos.y)));
//    color.g = 1. * rnd;
//    rnd = step(.5, random(vec2(st.x + .01, pos.y)));
//    color.b = 1. * rnd;


// patern3
     st.x -= .005;
     st.x += mod(u_time, 10.) * sign(mod(pos.y, 2.) - .9) * speed;
     st = tile(st,vec2(1, 4.), pos);
     st.x = floor(st.x * 500. * u_seed.y / u_resolution.y);

     float rnd = step(.5, random(vec2(st.x, pos.y)));
     color.r = 1. * rnd;

     stg.x += mod(u_time, 10.) * sign(mod(pos.y, 2.) - .9) * speed;
     stg = tile(stg,vec2(1, 4.), pos);
     stg.x = floor(stg.x * 500. * u_seed.y / u_resolution.y);

     rnd = step(.5, random(vec2(stg.x, pos.y)));
     color.g = 1. * rnd;

     stb += .005;
     stb.x += mod(u_time, 10.) * sign(mod(pos.y, 2.) - .9) * speed;
     stb = tile(stb,vec2(1., 4.), pos);
     stb.x = floor(stb.x * 500. * u_seed.y / u_resolution.y);

     rnd = step(.5, random(vec2(stb.x, pos.y)));
     color.b = 1. * rnd;



    outColor = vec4(color, 1.);
}
