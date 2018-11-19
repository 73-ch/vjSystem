#version 150

uniform float time;
uniform vec2 u_resolution;
uniform vec4 seed;

out vec4 outColor;

float random (in vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

// 2D Noise based on Morgan McGuire @morgan3d
// https://www.shadertoy.com/view/4dS3Wd
vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}

// Value Noise by Inigo Quilez - iq/2013
// https://www.shadertoy.com/view/lsf3WH
float noise(vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);

    vec2 u = f*f*(3.0-2.0*f);

    return mix( mix( dot( random2(i + vec2(0.0,0.0) ), f - vec2(0.0,0.0) ),
                     dot( random2(i + vec2(1.0,0.0) ), f - vec2(1.0,0.0) ), u.x),
                mix( dot( random2(i + vec2(0.0,1.0) ), f - vec2(0.0,1.0) ),
                     dot( random2(i + vec2(1.0,1.0) ), f - vec2(1.0,1.0) ), u.x), u.y);
}

void main() {
	vec2 uv = gl_FragCoord.xy / u_resolution;
  for (int i = 0; i < 100; ++i) {
    // uv.y += step(uv.x, 0.01 * i);
    uv.x += step(uv.y, 0.01 * i);
  }

	uv += noise(vec2(time, sin(uv.x)));
	uv = fract(uv * seed.x * 10.0);

  uv = uv*2.-1.;

  float l = length(uv);

  vec3 col = vec3(length(uv + seed.x), length(uv + 0.2 + seed.y), length(uv + 0.4 + seed.z));

  outColor = vec4(col,1.0);
}
