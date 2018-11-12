#version 150

uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform float s_opacity1;
uniform float s_opacity2;
uniform float s_opacity3;

uniform vec2 u_resolution;

out vec4 outputColor;