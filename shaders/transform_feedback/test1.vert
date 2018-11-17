#version 330

#define PI 3.14159265358979

#pragma glslify: import('../imports/util.glsl')
#pragma glslify: import('../imports/noise.glsl')

in vec3 in_position;
in vec3 in_velocity;
in float in_age;
in float in_lifetime;
// in vec3 in_shadow;

out vec3 out_position;
out vec3 out_velocity;
out float out_age;
out float out_lifetime;
// out vec3 out_shadow;

uniform float time;
uniform float timestep;
uniform float scale;

void main() {
    vec3 pos = in_position;
    vec3 vel = in_velocity;
    float age = in_age;
    float lifetime = in_lifetime;
    
    if(age >= lifetime){
        lifetime = 100.0 + 50.0 * abs(random(pos.xy));
        age = 0;
        vel.xyz = normalize(vel);
        pos = vec3(0.0);
    }else{
        vel.x += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 0.1352 * time)) * timestep;
        vel.y += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 1.2814 * time)) * timestep;
        vel.z += snoise(vec4(pos.x * scale, pos.y * scale, pos.z * scale, 2.5564 * time)) * timestep;
        vel.x = pow(vel.x, 2.0);
        vel.y = pow(vel.y, 2.0);
        vel.z = pow(vel.z, 2.0);
        if (length(pos) > 1000.0) {
            vel *= -1.0;
        }
        age++;
    }

    out_position = pos + vel;
    out_velocity = vel;
    out_age = age;
    out_lifetime = lifetime;
    // out_shadow = in_shadow;;
}
