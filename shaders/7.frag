#version 330
uniform vec2  u_resolution;    // resolution (512.0, 512.0)
uniform vec2  u_mouse;         // mouse      (-1.0 ~ 1.0)
uniform float time;          // time       (1second == 1.0)

out vec4 out_color;

const vec3 pinkColor = vec3(1.0, 0.1, 0.5);
const vec3 blueColor = vec3(0.1, 0.3, 0.9);

float u_time = time;

float random (in float x) {
    return fract(sin(x) * 1e4);
}

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

float waveNeon(vec2 p, float power, float width, float height, float speed){
    float x = cos(abs(p.x * width));
    float y = power / abs(p.y + sin(p.x * 8. + u_time * speed) * height);
    return max(x * y, 0.0);
}

void main(){
    // 座標の正規化（-1.0 ~ 1.0）
    vec2 p = (gl_FragCoord.xy * 2.0 - u_resolution) / min(u_resolution.x, u_resolution.y);
    

//    float n = random2(p).x;
    p = p / abs(atan(p.y / p.x) * 0.2);
    float n = smoothstep(0.95, 1.0, random2(p).x);
    // ネオンの値を算出
//    float a = waveNeon(p, 0.05, 1.0 , 0.25, 2.5);
    p.y += p.y + noise(vec2(u_time / p.x)) / 3.;
//    p.y = step(0.5, abs(p.y))
    float b = waveNeon(p, 0.1 , 1.0, 0.4 , 3.);
    float a = waveNeon(vec2(p.x, p.y * -sign(p.y)), 0.1 , 1.0, 0.4 , 3.);

    for (int i = 0; i < 2; i++){
        a = waveNeon(vec2(p.x, a), 0.1 , 1.0, 0.4 , 3.);
        b = waveNeon(vec2(p.x, b), 0.1 , 1.0, 0.4 , 3.);
    }
    // ベースカラーと掛け合わせて色として出力する

    vec3 neon = blueColor * (b + a);

    vec3 color = neon + vec3(n);

    out_color = vec4(color, 1.0);
}