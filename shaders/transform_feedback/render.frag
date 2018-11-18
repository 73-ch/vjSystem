#version 330

in vec4 v_color;

in vec3 v_normal_varying;
in vec4 v_position_varying;
in vec3 v_light_position;

out vec4 fragColor;

void main (void) {
    float lambert = max(dot(normalize(v_light_position - v_position_varying.xyz), v_normal_varying), 0.0);
    fragColor = vec4(v_color.rgb * lambert, 1.0);
}