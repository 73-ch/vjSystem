#version 330

#define PI 3.14159265359
#define TWO_PI 6.28318530718

uniform vec2 u_resolution;
uniform float time;

out vec4 outputColor;

void genPolygon(in float index, in vec2 st, in float time, in float velocity, in float size, in vec3 color, out vec3 result){
  float d = 0.;
  st = st * 2. - 1.;
  int N = int(mod(time + index , 4.)+ 3.);
  float a = atan(st.x, st.y) + time * velocity * 2.;
  float r = TWO_PI / float(N);
  d = cos(floor(.5 + a / r) * r - a) * length(st) / size;

  result = color * vec3(1. - smoothstep(.4, .41, d));
}

float rnd(vec2 n){
    return fract(sin(dot(n, vec2(12.9898, 4.1414))) * 43758.5453);
}

void main(){
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  st.x *= u_resolution.x / u_resolution.y;
  vec3 color = vec3(0.);

  for(float i = 0.; i < 20.; i++){
      vec3 polygon;
      float rnd1 = rnd(vec2(i, i));
      float rnd2 = rnd(vec2(i, rnd1));
      float rnd3 = rnd(vec2(rnd1, rnd2));
      genPolygon(i, st + vec2(rnd1 - .5, rnd2 - .5 +mod(time, 4.) * rnd3 * rnd2), mod(time, 4.), rnd1, rnd3, vec3(rnd1, rnd2, rnd3), polygon);
      color += polygon;
  }
  outputColor = vec4(color, 1.);
}