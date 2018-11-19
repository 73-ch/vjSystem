#version 330

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float time;
uniform vec2 u_mouse;

out vec4 out_color;

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

float noise(float x){
    float i = floor(x);  // integer
    float f = fract(x);
    float u = f * (f * 5. - 4.) * (2. - 1. * f ); // custom cubic curve
    x = mix(random(i), random(i + 1.), u);
    return x;
}

void main(void){
    vec2 st = gl_FragCoord.xy / u_resolution.xy;
    vec3 color = vec3(0.0);

    float u_time = -time*7.+ random(st.x);

    float r1 = random(st.x);
    float n1 = noise(r1 * r1);
    float r2 = random((st.x + .1));
    float n2 = noise(r2 * r2);

    float r3 = (n1 + mod(u_time + r1 * 5., 5.)) / 5.;
    st.y += r3 - 1.0;
    float pct = smoothstep(n1, n2, st.y) - smoothstep(n1 + .2, n2 + .2, st.y);

    color = vec3(pct);

    vec3 v_color = vec3(0.6, 0.8, 1.0);
    out_color = vec4(color * v_color, 1.);
}