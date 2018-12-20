#version 330

uniform vec4 seed;
uniform vec2 u_resolution;
uniform float time;

out vec4 out_color;

#define PI 3.141592653589793O
#define PI_2 6.28318530718

float hash( vec2 p ){
    return fract( sin( dot(p, vec2( 15.79, 81.93  ) ) * 45678.9123 ) );
}

float valueNoise( vec2 p ) {
    vec2 i = floor( p );
    vec2 f = fract( p );
    
    f = f*f*(3.0 - 2.0*f);
    
    float bottomOfGrid =    mix( hash( i + vec2( 0.0, 0.0 ) ), hash( i + vec2( 1.0, 0.0 ) ), f.x );
    float topOfGrid =       mix( hash( i + vec2( 0.0, 1.0 ) ), hash( i + vec2( 1.0, 1.0 ) ), f.x );

    return mix( bottomOfGrid, topOfGrid, f.y );
}
vec3 genPolygon(in float n, in vec2 st, in float size){
  float d = 0.;
  float a = atan(st.x, st.y);
  float r = PI_2 / n;
  d = cos(floor(.5 + a / r) * r - a) * length(st) / size;
  return vec3(1. - smoothstep(.4, .41, d));
}

float fbm( vec2 uv , float diff)
{
    float sum = 0.00;
    float amp = 0.7;
    
    for( int i = 0; i < 4; ++i ){
        sum += valueNoise( uv ) * amp;
        uv += uv * diff;
        amp *= 0.4;
    }
    return sum;
}

float plot(vec2 st, float pct){
    return  smoothstep( pct - 0.005, pct, st.y) -
    smoothstep( pct, pct + 0.005, st.y);
}
void main() {
    vec2 p = (gl_FragCoord.xy*2. - u_resolution) / u_resolution.y;
    vec2 st = gl_FragCoord.xy / u_resolution.x;
    st *= sin(time * .4);
    st.y *= fract(fbm(st, seed.y) + sin(length(p+time*.2)*3.0));
    p = fract(p * 3. * seed.y + sin(p.x+time+seed.y) * 2.0)-.5;
    vec3 pol = c(seed.x*2.  + mod(floor(st.y*12.) + time,2), p, seed.z*1.0);
    
    st*=pol.x;
    st.x += sin(time*0.1+seed.y * 2.0);
    float n = fract(fbm(st, 1.2)*100 * sin(time * .07) + step(0.7, seed.y) * .6);
    st.x += (fbm(vec2(sin(time * .3 * length(p * pow(cos(sin(time * .1)), 2.0 + seed.z) * .15)), distance(st, vec2(sin(time)*10., cos(time)))), 1.8) )* step(sin(time)*.5+.25,seed.y);
    st.y = mod(fbm(st, 1.2) * 10., 2.0) * .5;

    // float n =fbm(st, 1.2);
    n = abs(step(0.1, seed.z) - n);

    vec3 a = vec3(1.0, abs(sin(time)), seed.y);

    for (int i= 0 ;i < 5; i++) {
        a += vec3(plot(st+sin(i) * i * .1, sin(time*.1 + length(p))));
    }
    vec3 final = vec3(n) * mix(a, vec3(1.0), sin(time*.1 + seed.z*.3)*.5+.5);
    out_color = vec4(final,1.0);
    
    
    // out_color = vec4(pol,1.0);
}