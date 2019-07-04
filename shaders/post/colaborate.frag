#version 330
uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform float s_opacity0;
uniform float s_opacity1;
uniform float s_opacity2;

uniform vec2 u_resolution;
uniform vec4 seeds;
uniform float time;

// arb tex       
vec2 st = gl_FragCoord.xy;

out vec4 outputColor;


vec3 diffColor(in sampler2DRect texture_in, in vec2 st, in vec2 diff) {
    vec3 ret;
    ret.r += texture(s_texture0, st + diff).r;
    ret.g += texture(s_texture0, st).g; 
    ret.b += texture(s_texture0, st - diff).b;

    return ret;
}
void splitWindow(in float split_num, inout vec2 st_) {
    /*
    vec2 tmp;
    tmp.x=split_num;
    tmp.y=split_num;
    */
    st_ = mod((st_-u_resolution*.5)* split_num,u_resolution);
}


void main() {
    vec3 final;

    vec2 diff = vec2(30. *abs(sin(time*10)));

    float sum_opacity = max(s_opacity0 + s_opacity1 + s_opacity2, 1.0);
    
    if (s_opacity0 > 0.0) {
        //splitWindow(4.,st);
        splitWindow(floor(8.*abs(sin(time* 1.))),st);
        final += diffColor(s_texture0, st, diff) * s_opacity0 / sum_opacity;
    }

    if (s_opacity1 > 0.0) {
        final += texture(s_texture1, st).xyz * s_opacity1 / sum_opacity;
    }
    if (s_opacity2 > 0.0) {
        final += texture(s_texture2, st).xyz * s_opacity2 / sum_opacity;
    }

    outputColor = vec4(final, 1.0);
}