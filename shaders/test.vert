#pragma glslify: import('./init_vert.glsl')

#define PI 3.141592653589793

uniform vec4 seed;

out vec4 v_color;



vec3 rnd(float n, vec3 s){
    return vec3((fract(sin(dot(vec2(n, s.x), vec2(12.9898, 4.1414))) * 43758.5453) - 0.5) * 20.,
                (fract(sin(dot(vec2(n, s.y), vec2(12.9898, 4.1414))) * 43758.5453) - 0.5) * 20.,
                (fract(sin(dot(vec2(n, s.z), vec2(12.9898, 4.1414))) * 43758.5453) - 0.5) * 20.);
}

float rnd(vec2 n){
    return fract(sin(dot(n, vec2(12.9898, 4.1414))) * 43758.5453);
}

void main() {
    int side_num = int(pow(vertex_num, 0.3333333));
    
    float pitch = 300.0;
    
    float x = mod(gl_VertexID, side_num);
    float y = mod(floor(gl_VertexID / side_num), side_num);
    float z = floor(gl_VertexID / side_num / side_num);
    
    vec3 position = vec3((x - side_num / 2) * pitch + cos(seed0.y * 100. + gl_VertexID) * 10., (y- side_num / 2)*pitch + sin(seed0.y * 100. + gl_VertexID) * 10., (z- side_num / 2)*pitch + sin(seed0.x * 100. + gl_VertexID) * 10.);
    gl_Position = modelViewProjectionMatrix * vec4(position, 1.);
//    gl_PointSize = seed0.x * 2.0;
    gl_PointSize = 5. * (1. - length(cam_pos - position)/ 10000.+ seed0.x / 255.);
    
//    v_color = vec4(x/side_num,y/side_num,z/side_num,1.0);
    v_color = vec4(1.,1.,1., (1. - length(cam_pos - position)/ 50000.+ seed0.x / 255.));
}
