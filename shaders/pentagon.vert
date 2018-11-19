#pragma glslify: import('./inits/init_vert.glsl')
#pragma glslify: import('./imports/hsv2rgb.glsl')
#pragma glslify: import('./imports/polar2ortho.glsl')

#define saturate(a) clamp(a, 0.0, 1.0)

uniform vec4 seed;

out vec4 v_color;

const float pentagon_interior = radians(72.0);
const float pentagon_half_interior = radians(36.0);

void main() {
    float id = gl_VertexID / vertex_num;

    float r = pentagon_interior * (gl_VertexID%5) + sin(gl_VertexID + cos(seed.x / 255.));
    r += pentagon_half_interior * floor(gl_VertexID % 10 / 5);
    float a = (E - exp(floor(gl_VertexID / 5.) * 5. / vertex_num)) * 100.;
    // float a = float(gl_VertexID) / float(vertex_num) * 10.;
    // float a = 10.;


    vec3 pos = vec3(polar2ortho(r,a), 0.);
    // pos = vec3(1.0);
    gl_Position = modelViewProjectionMatrix * vec4(pos, 1.0);
    // v_color = vec4(hsv2rgb(vec3(saturate(a),1.0, 1.0)), 1.0);
    v_color = vec4(1.0);
    // gl_PointSize = 10.;
}