#version 330

uniform sampler2DRect reference_texture;
uniform sampler2DRect large_drop_texcoord_texture;

uniform vec2 u_resolution;

vec2 upset_y (vec2 a, vec2 res) {
    return vec2(a.x, res.y - a.y);
}

vec3 blur(sampler2DRect tex, vec2 st, float size) {
    vec3 final = vec3(0);
    for (float i = 0; i < 9; i++) {
        final += texture(tex, st + (vec2(mod(i, 3.0), floor(i/3)) - vec2(1.))* size).rgb * .0625 * (mod(i,2) + 1. + step(3.9, 9)-step(-4.1, -i));
    }
    
    return final;
}

out vec4 output_color;

void main() {
    vec2 st = gl_FragCoord.xy;
    vec4 large = texture(large_drop_texcoord_texture, st);
    vec2 texcoord;
    texcoord = large.xy * step(0.4, large.a);
    
    texcoord *= u_resolution;
    

    vec3 col;
    if (all(equal(texcoord.xy, vec2(0.)))) {
//        col = blur(reference_texture, st, 10.0);
        col = texture(reference_texture, st).rgb;
    } else {
//        col = blur(reference_texture, texcoord, 10.0);
        col = texture(reference_texture, texcoord).rgb;
    }

    output_color = vec4(col, 1.0);
}
