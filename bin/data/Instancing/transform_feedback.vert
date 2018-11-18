#version 330

#define PI 3.14159265358979

#pragma include "util.glsl"
#pragma include "noise.glsl"

in vec3 in_position;
in vec3 in_velocity;
in vec3 in_shadow;

out vec3 out_position;
out vec3 out_velocity;
out vec3 out_shadow;

uniform float time;
uniform float timestep;
uniform float scale;
uniform vec3 light_position;

void main() {
    vec3 pos = in_position;
    vec3 vel = in_velocity;
    
    float u_time = floor(time);
    if (abs(length(pos)) >= 600.0) {
        vel.xyz = normalize(vel);
        pos = vec3(0.0);
    }
    
    vel.x += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 0.1352 * time)) * timestep;
    vel.y += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 1.2814 * time)) * timestep;
    vel.z += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 2.5564 * time)) * timestep;

    
//    out_shadow = vec4(random(pos.xy)*100., 10., random(pos.yz) * 100., 1.0);
    out_position = pos + vel;
    out_velocity = vel;
    
    vec3 up = vec3(0,1,0);
    vec3 m = out_position - light_position;
    
    vec3 shadow = light_position + (dot(vec3(0), up) - dot(up, light_position)) / dot(up, m) * m;
    shadow.x = min(1000.0, abs(shadow.x)) * sign(shadow.x);
    shadow.z = min(1000.0, abs(shadow.z)) * sign(shadow.z);
    
    out_shadow = shadow;
}
