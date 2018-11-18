#version 330
#pragma glslify: import('../imports/util.glsl')

uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;
uniform mat4 textureMatrix;
uniform mat4 modelViewProjectionMatrix;
uniform vec4 globalColor;

uniform mat4 normal_matrix;

uniform vec3 light_position;
uniform vec4 start_color;
uniform vec4 end_color;
uniform float time;

in vec4 position;
in vec3 normal;
in vec2 texcoord;
in vec4 color;

in vec3 in_position;
in vec3 in_velocity;

out vec4 position_varying;
out vec3 normal_varying;

out vec4 v_color;
out vec3 v_normal_varying;
out vec4 v_position_varying;
out vec3 v_light_position;

void main() {
    float elapsedTime = mod(time, 1.0);
    
    mat4 lookAt = makeLookAt( in_velocity.xyz, vec3(0.0), vec3(0,1,0) );
    vec4 size = vec4(vec3(1.0), 1.0);
    position_varying = vec4(vec3(lookAt * (position * size)) + in_position, 1.0);
    v_position_varying = modelViewMatrix * position_varying;
    
    normal_varying = normalize(mat3(lookAt) * normal);
    v_normal_varying = normalize(vec3(mat3(normal_matrix) * normal_varying));
    
    vec3 color = map(vec3(elapsedTime), vec3(0.0), vec3(1.0), start_color.rgb, end_color.rgb);
    v_color = vec4(color, 1.0);
    
    v_light_position = vec3(modelViewMatrix * vec4(light_position, 1.0));
    
    gl_Position = modelViewProjectionMatrix * position_varying;
}