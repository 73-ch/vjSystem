#version 150

#define PI 3.141592653589793

uniform mat4 modelViewProjectionMatrix;
uniform float time;
uniform int vertex_num;
uniform vec4 r_seed0;
in vec4 position;


vec3 rnd(float n, vec3 s){
    return vec3((fract(sin(dot(vec2(n, s.x), vec2(12.9898, 4.1414))) * 43758.5453) - 0.5) * 20.,
                (fract(sin(dot(vec2(n, s.y), vec2(12.9898, 4.1414))) * 43758.5453) - 0.5) * 20.,
                (fract(sin(dot(vec2(n, s.z), vec2(12.9898, 4.1414))) * 43758.5453) - 0.5) * 20.);
}

float rnd(vec2 n){
    return fract(sin(dot(n, vec2(12.9898, 4.1414))) * 43758.5453);
}

void main() {
    float th = (gl_VertexID + time * 100.) / float(vertex_num) * 2 * PI;
    float r = 500. * sin(2 * th);
    vec3 v_position = vec3(cos(th) * r + rnd(vec2(gl_VertexID, r_seed0.x)) * 30., sin(th) * r + rnd(vec2(gl_VertexID, r_seed0.y)) * 30., 500. * sin(2 * th)  + rnd(vec2(gl_VertexID, r_seed0.z)) * 30.);
    gl_Position = modelViewProjectionMatrix * vec4(v_position, 1.);
}