#version 150

uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform float s_opacity0;
uniform float s_opacity1;
uniform float s_opacity2;

uniform vec2 u_resolution;

vec2 st = vec2(gl_FragCoord.x, u_resolution.y - gl_FragCoord.y);

out vec4 outputColor;