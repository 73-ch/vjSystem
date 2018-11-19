#version 330
uniform vec2 u_resolution;
uniform float time;

out vec4 out_color;

float u_time = time;

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

float box(vec2 _st, vec2 _size, float _smoothEdges){
    _size = vec2(.5) - _size * .5;
    vec2 aa = vec2(_smoothEdges * .5);
    vec2 uv = smoothstep(_size, _size + aa, _st);
    uv *= smoothstep(_size, _size + aa, vec2(1.) - _st);
    return uv.x * uv.y;
}

float circle(vec2 _st, float _radius){
    vec2 dist = _st - vec2(.5);
    return 1. - smoothstep(_radius - (_radius * .01),
                         _radius + (_radius * .01),
                         dot(dist, dist) * 4.);
}

float waveNeon(vec2 p, float power, float width, float height, float speed){
    float x = cos(abs(p.x * width));
    float y = power / abs(p.y + sin(p.x * 8. + u_time * speed) * height);
    return max(x * y, 0.0);
}

void main(void){
    vec2 st = gl_FragCoord.xy / u_resolution.xy * 2. -1.;

    st.x = fract(st.x * 100.) / 100.;
    float s = sin(u_time * st.x * 40. + st.y);

    float c = box(vec2(s), vec2(0.6), 0.01);

    vec3 color =  vec3(box(st,vec2(.7), .01));

    out_color = vec4(vec3(c), .9);
}