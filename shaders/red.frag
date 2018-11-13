#pragma glslify: import(./init_pfs.glsl)

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;

    outputColor = vec4(1.0,0.,.0,1.0);
}