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
uniform vec4 seed;

void main() {
    vec3 pos = in_position;
    vec3 vel = in_velocity;
    
    float u_time = floor(time);
    if (abs(length(pos)) >= 400.0 + random(pos.xy + u_time) * 200.) {
        vel.xyz = normalize(vel);
        pos = vec3(0.0);
    }
    
    vel.x += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 0.1352 * time)) * timestep*2.0;
    vel.y += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 1.2814 * time)) * timestep*2.0;
    vel.z += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 2.5564 * time)) * timestep*2.0;
    out_position = pos + vel*timestep*0.05;
    out_velocity = vel;
    
    vec3 l_pos = light_position - vec3(0, 1000, 0);
    vec3 up = vec3(0,1,0);
    vec3 m = out_position - l_pos;
    vec3 shadow = vec3(10000000.);
    
    if (bool(abs(step(l_pos.y, out_position.y)- 1.0))) {
        shadow = l_pos + (dot(vec3(0), up) - dot(up, l_pos)) / dot(up, m) * m;
        shadow.x = min(10000.0, abs(shadow.x)) * sign(shadow.x);
        shadow.z = min(10000.0, abs(shadow.z)) * sign(shadow.z);
    }
    out_shadow = vec3(shadow.xz, length(m));
}
