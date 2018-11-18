#version 330

#define PI 3.14159265358979

in vec3 in_shadow;
in vec3 in_velocity;
in vec4 position;

uniform float time;
uniform mat4 modelViewProjectionMatrix;

// excerpt from https://github.com/andreasmuller/NoiseWorkshop
mat4 makeLookAt(vec3 eye, vec3 center, vec3 up)
{
    mat4 M;
    
    vec3 zaxis = normalize(eye - center);
    vec3 xaxis = normalize( cross(up, zaxis) );
    vec3 yaxis = cross(zaxis,xaxis);
    
    M[0] = vec4(xaxis,0);
    M[1] = vec4(yaxis,0);
    M[2] = vec4(zaxis,0);
    M[3] = vec4(eye,1);
    
    return M;
}

void main() {
    mat4 look_at = makeLookAt( in_velocity, vec3(0.0), vec3(0,1,0) );
    vec3 pos = (look_at * position).xyz + in_shadow;
    pos.y = 0.01;
    gl_Position = modelViewProjectionMatrix * vec4(pos, 1.0);
}
