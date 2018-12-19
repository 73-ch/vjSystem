#version 330

uniform vec2 u_resolution;
uniform float time;
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

out vec4 out_color;

void main() {
    vec2 st = gl_FragCoord.xy;
    vec3 final;

    final = texture(tex0, st).rgb;

    out_color = vec4(final, 1.0);
    // out_color = vec4(st / u_resolution, 1.0, 1.0);
}