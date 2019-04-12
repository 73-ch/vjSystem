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

vec2 st = vec2(gl_FragCoord.x, gl_FragCoord.y);

void main()
{
    vec4 color2 = s_opacity2 > 0.0 ? texture(s_texture2, st) * s_opacity2 : vec4(0.0);
    vec4 color1 = s_opacity1 > 0.0 ? texture(s_texture1, st) : vec4(0.0);
    vec4 color0 = s_opacity0 > 0.0 ? texture(s_texture0, st) : vec4(0.0);

    vec4 final = mix(color2, color1, s_opacity1);
    final = mix(final, color0, s_opacity0);

    outputColor = vec4(final);
}
