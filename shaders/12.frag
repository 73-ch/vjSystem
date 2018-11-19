#version 330
// Author @patriciogv ( patriciogonzalezvivo.com ) - 2015

#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

uniform vec2 u_resolution;
uniform float time;
uniform vec4 seed;

out vec4 outputColor;

mat2 rotate2d(float _angle){
    return mat2(cos(_angle), -sin(_angle),
                sin(_angle), cos(_angle));
}

mat2 scale(vec2 _scale){
    return mat2(_scale.x, 0., 0., _scale.y);
}

float rnd(vec2 n){
    return fract(sin(dot(n, vec2(12.9898, 4.1414))) * 43758.5453);
}

vec3 line(vec2 _st, vec2 _pos, float _width, vec2 _ratio,  mat2 _scale, mat2 _rotate, vec3 _color){
    vec3 line = vec3(0.);
    _st += _pos;
    _st -= vec2(.5);
    _st *= _scale;
    _st *= _rotate;
    _st += vec2(.5);
    float pct = (step(_pos.x, _st.x) - step(_pos.x + _width, _st.x)) * _ratio.x + (step(_pos.y, _st.y) - step(_pos.y + _width, _st.y)) * _ratio.y;
    line  = _color * vec3(pct);
    return line;
}

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution.x;
    vec3 color = vec3(0.);

    float u_time = time + seed.x;
    for(float i = 0.; i < 20.; i++){
        float rnd1 = rnd(vec2(i, i + 2.));
        float rnd2 = rnd(vec2(rnd1, rnd1 + 5.));
        float rnd3 = rnd(vec2(4., rnd1 * rnd2));
        vec2 pos = vec2(rnd3,1.);
        float width = 0.05;
        vec2 ratio = vec2(1., 0.);
        mat2 scale = scale(vec2(sin(u_time * rnd1), 1.228));
        mat2 rotate = rotate2d(sin(u_time * rnd2) * PI);
        vec3 line_color = vec3(rnd1, 0., rnd2);
        vec3 line_object = line(st, pos, width, ratio, scale, rotate, line_color);
        color += line_object;
    }

    outputColor = vec4(color, 1.);
}