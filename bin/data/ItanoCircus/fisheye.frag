#version 410

uniform sampler2D input_texture;
uniform float strongness;
uniform vec2 resolution;

out vec4 out_color;

void main() {
    vec2 p = gl_FragCoord.xy / resolution-.5;

    p *= pow(length(p), 0.25 + strongness *.25);
    p += 0.5;

    vec2 st = p;

    vec3 color = texture(input_texture, p).rgb;
    // color = vec3(v_texcoord, 1.0);

    out_color = vec4(color, 1.0);
}