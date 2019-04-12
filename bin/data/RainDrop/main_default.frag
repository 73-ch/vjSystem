#version 330

uniform vec2 u_resolution;
uniform float time;
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

vec3 blur(sampler2DRect tex, vec2 st, float size) {
    vec3 final = vec3(0);
    for (float i = 0; i < 9; i++) {
        final += texture(tex, st + (vec2(mod(i, 3.0), floor(i/3)) - vec2(1.))* size).rgb * .0625 * (mod(i,2) + 1. + step(3.9, 9)-step(-4.1, -i));
    }
    
    return final;
}

out vec4 out_color;

void main() {
    vec2 st = gl_FragCoord.xy;
    vec3 final;

    final = blur(tex0, st/u_resolution, 5.);

    out_color = vec4(final, 1.0);
}
