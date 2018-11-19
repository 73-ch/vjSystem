#version 150
uniform vec2 u_resolution;
uniform float time;

out vec4 outColor;

// 2D Random
float random (in vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

// 2D Noise based on Morgan McGuire @morgan3d
// https://www.shadertoy.com/view/4dS3Wd
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

void circle(in vec2 st,in vec2 pos, in float rad, in vec3 col, in float smoothEdges, out vec3 res){
    vec2 dist = st - vec2(pos);
    float aa = smoothEdges * .5;
    float pct = 1. - smoothstep(rad, rad + aa, dot(dist, dist) * 5.);
    res = vec3(col * pct);
}

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution.xy;
    float n = noise(st);

    vec2 pos = random2(vec2(time));

    float t = time/3.;

    vec3 res;

    for (float i = 0.; i < 30.; i++) {
        float n = noise(vec2(t))*3.;
        float t1 = fract(t+(i+n)/30.);
        float t2 = fract(t+(i+n)/30.+0.05);

        vec2 pos = random2(vec2(i+floor(t+i/10.+0.05)));
        vec3 circle1 = vec3(step(t1, distance(st,pos))-step(t1+0.005, distance(st,pos)));

        vec3 circle2 = vec3(step(t2, distance(st,pos))-step(t2+0.005, distance(st,pos)));

        res += circle1*max(0.7-t1*2., 0.)+circle2*max(0.7-t2*2., 0.);
    }



    outColor = vec4(res, 1.0);
}