#version 150
#define LIGHT_NUM 5

uniform mat4 invMatrix;
uniform vec3 lightPosition[LIGHT_NUM];
//uniform sampler2DRect d_texture0;
//uniform sampler2DRect d_texture1;
//uniform sampler2DRect d_texture2;
//uniform sampler2DRect d_texture3;
//uniform sampler2DRect d_texture4;
uniform sampler2DRect d_texture[LIGHT_NUM];
uniform bool active_light[LIGHT_NUM];
uniform vec4 ambientColor;
uniform float clipD[LIGHT_NUM];

uniform float tolerate;

in vec4 vPosition;
in vec3 vNormal;
in vec4 vColor;
in vec4 vTexCoord[LIGHT_NUM];
in vec4 vDepth[LIGHT_NUM];
out vec4 outColor;

float restDepth(vec4 RGBA){
    const float rMask = 1.0;
    const float gMask = 1.0 / 255.0;
    const float bMask = 1.0 / (255.0 * 255.0);
    const float aMask = 1.0 / (255.0 * 255.0 * 255.0);
    float depth = dot(RGBA, vec4(rMask, gMask, bMask, aMask));
    return depth;
}

void main(){
    vec3 final = vec3(0.,0.,0.);
    
    
    for (int i = 0; i < LIGHT_NUM; i++) {
        if (active_light[i]) {
            float lightCoord = 0.0;
            vec3  light = lightPosition[i] - vPosition.xyz;
            vec3  invLight = normalize(invMatrix * vec4(light, 0.0)).xyz;
            float diffuse = clamp(dot(vNormal, invLight), 0.2, 1.0);
            float shadow = restDepth(textureProj(d_texture[i], vTexCoord[i]));

            vec4 depthColor = vec4(1.0);
            if(vDepth[i].w > 0.0){
                lightCoord = (vDepth[i].z / clipD[i]);
                if(lightCoord > shadow){
                    depthColor  = vec4(0.5, 0.5, 0.5, 1.0);
                }
            }
            
            final += (vec4(vec3(diffuse/2.), 1.0) * depthColor).xyz;
//            if (i == 1) {
//                final = vec3(textureProj(d_texture1, vTexCoord[1]).r);
//            }
        }
//        final = vec3(textureProj(d_texture1, vTexCoord[1]).r);
    }
    outColor = vec4(final, 1.0);
    
}
