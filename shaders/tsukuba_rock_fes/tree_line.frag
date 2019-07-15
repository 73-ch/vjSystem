#version 330

uniform vec2 u_resolution;
uniform float time;

out vec4 main_out;

const float PI = acos(-1);
const float PI_2 = PI * 2.;

void main() {
    vec2 p = gl_FragCoord.xy / u_resolution;

    float width = 5.0 / u_resolution.y;

    float r = sin(time + p.x * PI_2);

    float f = step(0.5 + r * .5 - width * .5, p.y) * step(p.y, 0.5 + r * .5 + width*.5);

    vec3 color = vec3(f);

    main_out = vec4(color, 1.0);
}