#version 330

in vec3 position;
in vec3 normal;
in vec3 color;

uniform mat4 modelMatrix;
uniform mat4 modelViewProjectionMatrix;
uniform float time;
uniform float vertex_length;

uniform bool avoid_active[5];
uniform vec3 avoid_positions[5];
uniform float avoid_size[5];


out vec3 v_color;
out vec3 v_normal;
out vec3 v_position;

void main() {
    v_position = (modelMatrix * vec4(position,1.0)).xyz;
    vec3 moved_pos = position;
    
    vec3 avoid;
    for (int i = 0; i < 5; i++) {
        if (!avoid_active[i]) continue;
        vec3 dir = v_position - avoid_positions[i];
        
        avoid += avoid_size[i] * normalize(dir) * 1.2
//         * pow(1.0 - clamp(length(dir) / 300, 0.,1.), 2.0)
        ;
        
    }
    
    vec3 final;
    
    final = moved_pos + avoid;

    gl_Position = modelViewProjectionMatrix * vec4(final, 1.0);
    v_color = avoid;
    v_normal = normal;
    
}
