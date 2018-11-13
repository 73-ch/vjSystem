#version 150

uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform float s_opacity0;
uniform float s_opacity1;
uniform float s_opacity2;

uniform vec2 u_resolution;

in vec2 v_texcoord;

out vec4 outputColor;

void main()
{
    vec2 st = gl_FragCoord.xy;
    vec3 final;

    if (s_opacity0 > 0.0) {
        final += texture(s_texture0, st).xyz * s_opacity0;
    }
    if (s_opacity1 > 0.0) {
        final += texture(s_texture1, st).xyz * s_opacity1;
    }

    if (s_opacity2 > 0.0) {
        final += texture(s_texture2, st).xyz * s_opacity2;
    }

    outputColor = vec4(texture(s_texture0, st).xyz,1.0);
}
