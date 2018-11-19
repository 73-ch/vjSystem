#version 150

uniform float time;
uniform vec2 u_resolution;
uniform vec4 seed0;
// white, uv_scale, speed

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

  vec3 col;
  for (int i= 0; i < 25; ++i) {
    uv.x += mod(i,5.0);
    uv.y += fract(i/5.0);
    // uv += random(vec2(i));
    vec2 u_time = vec2(time * .05, noise(vec2(time*seed0.z, uv.x*seed0.y)));
    col += vec3(min(0.5,noise(uv*15.*seed0.y + u_time)) * .8);
    col.b += .1;
  }

  col /= 25.0;

  col+= seed0.x;
  // col -= exp(random(uv+u_time))/2.7 * (1.-noise(uv+u_time));

  outColor = vec4(min(col,vec3(0.95)),1.0);
}
