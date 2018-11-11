#version 150

uniform sampler2D s_texture0;
uniform sampler2D s_texture1;
uniform sampler2D s_texture2;
uniform float s_opacity1;
uniform float s_opacity2;
uniform float s_opacity3;

out vec4 outputColor;

void main()
{
    outputColor = vec4(1.0);
}
