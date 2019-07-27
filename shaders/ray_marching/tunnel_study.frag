#version 330

uniform vec2 u_resolution;
uniform float time;

out vec4 main_out;

const float PI = acos(-1.);

vec3 hsv(vec3 i) {
    vec3 p = abs(fract(vec3(i.r) + vec3(1.,2./3.,1./3.)) * 6. - 3.);
    return i.b * mix(vec3(1.), clamp(p - vec3(1.), 0., 1.), i.g);
}

void main() {
    // vec2 dp = (gl_FragCoord.xy - u_resolution * .5) / u_resolution.y;
    vec2 p = (gl_FragCoord.xy - u_resolution*vec2((cos(PI * sin(time * .5))+1.0)*.5, .25 + cos(time) * 0.1)) / u_resolution.y;
    p *= mat2(cos(time), sin(time), -sin(time), cos(time));
    float w = length(p);


    vec2 bp = vec2(atan(p.y,p.x)/PI * 4.0, .4/w + time*6.);
    vec2 np = bp + .5;
    
    np = fract(np);

    float width = 0.03;

    // np = fract(np * 4.);

    float a = step(np.x, 0.5+ width / (w * PI)) * step(0.5 - width / (w * PI),np.x);
    a += step(np.y, 0.5+ width / (w * PI)) * step(0.5 - width / (w * PI),np.y);

    vec3 line = vec3(a) * w;

    vec2 rp = bp;
    vec2 count = floor(rp)*.9 +sin(time);
    rp = fract(rp);

    float b = step(1.0, mod(count.y + count.x, floor(abs(sin(time) * 4.))));
    // b *= step(1.0, mod(count.y, floor(abs(sin(time) * 4.))));
    // a += step(fract(np.y+.5), 0.5+ width / (w * PI)) * step(0.5 - width / (w * PI),fract(np.y+.5));

    vec3 rect = vec3(b) * w * hsv(vec3(fract((count.x+ count.y) / 6.), 0.8, 0.8));

    vec3 color = length(line) > 0.0 ? line : rect;
    color = log2(color + 1.0);

    // color = step(bp.x+.5,1.0) * step(0.9,bp.x+.5) == 1.0 ? vec3(0.,0.,1.0) : color;

    main_out = vec4(color, 1.0);
}