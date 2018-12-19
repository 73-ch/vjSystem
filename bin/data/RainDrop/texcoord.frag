#version 330

uniform vec2 u_resolution;
uniform sampler2DRect small_drops;

out vec4 output_texcoord; // vec4(texcoord.xy, 0., 0.)

void main() {
    vec2 final = texture(small_drops, gl_FragCoord.xy).xy;

    if (all(equal(final, vec2(0.)))) {
        final = gl_FragCoord.xy / u_resolution;
    }

    output_texcoord = vec4(final, 0., 1.);
}