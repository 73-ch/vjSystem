#pragma glslify: import('../init_pfs.glsl)

void main()
{
    float windowWidth = 1024.0;
    float windowHeight = 768.0;

    float r = gl_FragCoord.x / windowWidth;
    float g = gl_FragCoord.y / windowHeight;
    float b = 1.0;
    float a = 1.0;


    vec3 test = texture(s_texture1, gl_FragCoord.xy/vec2(windowWidth, windowHeight)).xyz;

    outputColor = vec4(r,g,b, a);
}