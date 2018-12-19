#version 330

uniform vec2 u_resolution;
uniform float time;
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

vec4 blur(sampler2DRect tex, vec2 st, float size) {
    vec4 final = vec4(0);
    vec4 col;
    for (float i = 0; i < 9; i++) {
        col = texture(tex, st + (vec2(mod(i, 3.0), floor(i/3)) - vec2(1.))* size);
        final += col.rgba * col.a * .0625 * (mod(i,2) + 1. + step(3.9, 9)-step(-4.1, -i));
    }
    
    return final;
}

out vec4 out_color;

void main() {
    vec2 st = gl_FragCoord.xy;
    vec3 final;

    vec3 base = vec3(0.4, 0.6, 0.8);
    vec4 b = vec4(mix(base, base * .1,1- st.y / u_resolution.y) ,1.0);
    vec4 a = texture(tex0, st) * vec4(base*1.5, 1.0);
    final = mix(b, a, a.a).rgb;

    out_color = vec4(final, 1.0);
}