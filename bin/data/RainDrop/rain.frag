#version 330

in vec2 v_texcoord;
in vec2 v_position;
uniform vec2 u_resolution;
uniform vec2 screen_size;
uniform vec3 u_color;

out vec4 out_color;

void main() {
    vec2 p = v_texcoord.xy / u_resolution.xy;
    
    vec2 final;
    p.y = abs(1.-p.y);
    p.x = abs(1.-p.x);
    final = smoothstep(.7,.8, p.y) * .4 + p * smoothstep(-.8, -.7, -p.y);
    
    float alpha = pow(1.-distance(vec2(.5,.5), p), 2.0);
    
    out_color = vec4(final * u_color.rg, .0, alpha);
}
