#pragma glslify: import('../inits/init_pfs.glsl')
in vec2 v_texcoord;

void main()
{
    vec3 final;

    if (s_opacity0 > 0.0) {
        final += texture(s_texture0, st).xyz * s_opacity0;
    }
    if (s_opacity1 > 0.0) {
        final += texture(s_texture1, st).xyz * s_opacity1;
    }

    if (s_opacity2 > 0.0) {
        final += texture(s_texture2, st).xyz * s_opacity2;
    }

    outputColor = vec4(final,1.0);
}
