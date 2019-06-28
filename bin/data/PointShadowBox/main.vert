#version 330 core

layout(location = 0) in vec4 position;
layout(location = 1) in vec4 color;
layout(location = 2) in vec4 normal;
layout(location = 3) in vec2 texcoord;


out vec2 TexCoords;

out VS_OUT {
    vec3 FragPos;
    vec3 Normal;
    vec2 TexCoords;
    vec4 Color;
} vs_out;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

uniform bool reverse_normals;


void main() {
    vs_out.FragPos = vec3(model * vec4(position.xyz, 1.0));
    if (reverse_normals) {
        vs_out.Normal = transpose(inverse(mat3(model))) * (-1.0 * normal.xyz);
    } else {
        vs_out.Normal = transpose(inverse(mat3(model))) * normal.xyz;
    }
    vs_out.TexCoords = texcoord;
    vs_out.Color = color;

    gl_Position = projection * view * model * vec4(position.xyz, 1.0);
}
