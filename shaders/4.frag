#version 330
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float time;
#define PI 3.14159265358979323846

out vec4 out_color;

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

vec2 tile(vec2 _st, vec2 _zoom, out vec2 pos){
    _st *= _zoom;
    pos = ceil(_st);
    return fract(_st);
}

float random (in float x) {
    return fract(sin(x) * 1e4);
}

float random (vec2 st){
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void createCircle(in vec2 st,in vec2 pos, in float rad, in vec3 col, in float smoothEdges, out vec3 res){
    vec2 dist = st - vec2(pos);
    float aa = smoothEdges * .5;
    float pct = 1. - smoothstep(rad, rad + aa, dot(dist, dist) * 5.);
    res = vec3(col * pct);
}

float noise(float x){
    float i = floor(x);  // integer
    float f = fract(x);
    x = mix(random(i), random(i + 1.), smoothstep(0., 1., f));
    return x;
}

void main(void){
    float u_time = time;

    vec2 st = gl_FragCoord.xy/u_resolution.xy;
    vec3 color = vec3(0.);

    float r;
    float n;
    float r2;
    vec2 pos;

    float s;
    vec3 cc;
    vec3 circle;

    // Divide the space in 4
    for (float i = 0.; i < 20.; i++){
        r = random(i +  10.);
        n = r + noise(i * u_time / 50.)/10.;
        r2 = random(vec2(i + 10.)) / 20.;
        pos = vec2(n, mod((u_time + i) / 20., 1.2) - 0.1);

        cc = vec3(.5 + .05 * i, .3 + .02 * i, 0.1);

        createCircle(st, pos, r2, cc,0.05 - r2, circle);

        color += circle;
    }

    out_color = vec4(color, 1.);
}