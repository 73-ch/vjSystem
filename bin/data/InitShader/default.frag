#version 150

uniform sampler2D(location = 1) scene1;
uniform sampler2D(location = 2) scene2;
uniform sampler2D(location = 3) scene3;
uniform float s_opacity1;
uniform float s_opacity2;
uniform float s_opacity3;

out vec4 outputColor;

void main()
{
    outputColor = vec4(1.0);
}
