#version 330

in vec4 position;
uniform vec2 u_resolution;
uniform mat4 modelViewProjectionMatrix;
out vec2 v_texcoord;
out vec2 v_position;

void main() {
    v_texcoord = position.xy;
    v_position = (modelViewProjectionMatrix * position).xy;
    gl_Position = modelViewProjectionMatrix * position;
}
