#version 330
uniform vec2 u_resolution;
uniform float time;
uniform vec4 seed;

out vec4 outputColor;

#pragma glslify: import('imports/util.glsl')

#define PI 3.14159265358979323846

vec2 rotate2D(vec2 _st, float _angle){
    _st -= .5;
    _st =  mat2(cos(_angle), -sin(_angle), sin(_angle), cos(_angle)) * _st;
    _st += .5;
    return _st;
}

vec2 scale(vec2 _st, vec2 _scale){
    _st -= .5;
    _st =  mat2(_scale.x, 0., 0., _scale.y) * _st;
    _st += .5;
    return _st;
}

vec2 tile(vec2 _st, float _zoom, out vec2 pos){
    _st *= _zoom;
    pos = ceil(_st);
    return fract(_st);
}


float box(vec2 _st, vec2 _size, float _smoothEdges){
    _size = vec2(.5) - _size * .5;
    vec2 aa = vec2(_smoothEdges * .5);
    vec2 uv = smoothstep(_size, _size + aa, _st);
    uv *= smoothstep(_size, _size + aa, vec2(1.) - _st);
    return uv.x*uv.y;
}

void main(void){
    vec2 st = gl_FragCoord.xy / u_resolution.y;
    vec3 color = vec3(0.);

    // Divide the space in 4
    vec2 pos;
    vec2 bst;
    st = tile(st, 4., pos);
    bst = st;
    // st = scale(st, vec2(1. - abs));

    float u_time = time + seed.x;
    // Draw a square
    color = vec3(box(st, vec2(.8), .01));
    st += vec2(.45 * mod(u_time * 2., 2.) - .45, .45);
    color += vec3(box(st + random(st + time), vec2(.1), .01));
    st = bst + vec2(-.45, .45 * mod(u_time * 2., 2.) - .45);
    color += vec3(box(st, vec2(.1), .01));
    st = bst + vec2(-.45 * mod(u_time * 2., 2.) + .45, -.45);
    color += vec3(box(st, vec2(.1), .01));
    st = bst + vec2(.45, -.45 * mod(u_time * 2., 2.) + .45);
    color += vec3(box(st, vec2(.1), .01));
    // color = vec3(st, 0.);

    outputColor = vec4(color, 1.0);
}