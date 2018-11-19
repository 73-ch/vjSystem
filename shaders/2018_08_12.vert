#version 150

#define PI 3.141592653589793
#define PI_2 6.283185307179586
#define SQRT_2 1.4142135623730951
#define H_SQRT_2 0.7071067811865476

#define L_SIZE 200.
#define SPAN 20.
#define L_SIZE_SPAN L_SIZE/2.+SPAN

#define L_NUM 500000.
#define V_L_NUM 0.000002

uniform mat4 modelViewProjectionMatrix;

in vec4 position;

in vec4 normal;
uniform float time;
uniform int vertex_num;
uniform vec4 seed0;
out vec4 v_color;

float rnd(vec2 n){
    return fract(sin(dot(n, vec2(12.9898, 4.1414))) * 43758.5453);
}

float rand(float n) {
    return fract(sin(n) * 43758.5453123);
}

vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}

float noise1D(float p) {
    float fl = floor(p);
    float fc = fract(p);

    return mix(rand(fl), rand(fl + 1.0), fc);
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
void main(){
    float th = float(gl_VertexID/100.+time);

    float a = 0.125;
    float r = 250.*(sin(th*a)*.5+1.);

    float x = cos(th)*r + noise1D(gl_VertexID)*10.;
    float y = sin(th)*r + noise1D(gl_VertexID + 201.)*10.;
    gl_Position = modelViewProjectionMatrix * vec4(x,y,0.,1.0);
    v_color = vec4(1.0);
    gl_PointSize = 1.;
}
