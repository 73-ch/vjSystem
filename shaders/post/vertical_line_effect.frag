#version 330

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float time;
uniform vec4 seed;

uniform sampler2DRect s_texture0;
uniform sampler2DRect s_texture1;
uniform sampler2DRect s_texture2;
uniform float s_opacity0;
uniform float s_opacity1;
uniform float s_opacity2;

out vec4 out_color;

// 2D Random
float random (in vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

// 2D Noise based on Morgan McGuire @morgan3d
// https://www.shadertoy.com/view/4dS3Wd
float noise (in vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);

    // Four corners in 2D of a tile
    float a = random(i);
    float b = random(i + vec2(1., 0.));
    float c = random(i + vec2(0., 1.));
    float d = random(i + vec2(1., 1.));

    // Cubic Hermine Curve.  Same as SmoothStep()
    vec2 u = f*f*(3. - 2. * f);
    u = smoothstep(0., 1., f);
//    u = smoothstep(0., 1., f) + sin(mod(u_time, 10.)) * 5.;

    // Mix 4 coorners porcentages
    return mix(a, b, u.x) +
            (c - a)* u.y * (1. - u.x) +
            (d - b) * u.x * u.y;
}

vec3 hsb2rgb( in vec3 c ){
    vec3 rgb = clamp(abs(mod(c.x*6.0+vec3(0., 4., 2.), 6.) - 3.) - 1., 0., 1.);
    rgb = rgb * rgb * (3. - 2. * rgb);
    return c.z * mix(vec3(1.), rgb, c.y);
}

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution.xy;
    float u_time = time;
    st.x += sin(time);
    float n = step(noise(vec2(st.x* 1000., st.y *.5)), 0.3);

    float sum_opacity = max(s_opacity0 + s_opacity1 + s_opacity2, 1.0);
    
    if (s_opacity0 > 0.0) {
        final += texture(s_texture0, st).xyz * s_opacity0 / sum_opacity;
    }
    if (s_opacity1 > 0.0) {
        final += texture(s_texture1, st).xyz * s_opacity1 / sum_opacity;
    }
    if (s_opacity2 > 0.0) {
        final += texture(s_texture2, st).xyz * s_opacity2 / sum_opacity;
    }

    out_color = vec4( * n)), 1.);
}