#version 330
uniform float time;
uniform vec4 seed;
uniform vec2 u_resolution;

out vec4 out_color;
#define PI 3.141592653589793O
#define PI_2 6.28318530718

vec3 hsv(float h, float s, float v){
    vec4 t = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(vec3(h) + t.xyz) * 6.0 - vec3(t.w));
    return v * mix(vec3(t.x), clamp(p - vec3(t.x), 0.0, 1.0), s);
}

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

void main(void){
    vec2 a = vec2(seed.x, seed.y);


    float v_time = time*.0004;
    vec2 m = vec2(a.x * 2.0 - 1.0, -a.y * 2.0 + 1.0);
    vec2 st = gl_FragCoord.xy;
    st += u_resolution * vec2(0.25);
    // st.x =  st.x - sign(fract(st.y * 40.)-0.5)*.1;
    
    // st = st.yx;
    // st = mod(st * seed.x * 5, u_resolution)

    vec2 p = (st * 2.0 - u_resolution) / u_resolution.y;
    p *= sign(seed.y-.5);
    p/=2.0;

    // p = vec2(cos(p.x + v_time), sin(p.y + v_time));
    // p.x  = sin(p.x +p.y + v_time);
    // p.x += (fbm(p + fract(seed.y+length(p)), 1.2)-.5);
    
    
    int j = 0;
    vec2  x = p + vec2(-0.5, 0.0);
    float y = 1.5 - a.x * 0.5;
    vec2  z = vec2(0.0, 0.0);
    for(int i = 0; i < 360; i++){
        j++;
        // x += seed.z * 0.1 * step(0.18, mod(seed.y, .25));
        // x /= y-seed.x*0.1+1.0;
        if(length(z) > 2. + fract(v_time) *20.0){break;}
        // z -= (seed.y + sin(time) * 0.1) * 0.125 +0.5;
        z = vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * (z.y)) + x * y;
    }
    // int jj = 0;
    // for(int i = 0; i < 360; i++){
    //     jj++;
    //     if(length(z) > 2.0){break;}
    //     z -= (seed.y + sin(time) * 0.1) * 0.125 +0.5;
    //     z = vec2((z.x * z.x + step(0.5, fract(v_time*.2)) * (fbm(p * fract(time), 1.8) - .5)) - z.y * z.y, 2.0 * z.x * z.y) + x + y;
    // }

    // j = j / jj;


    float h = abs(mod(v_time * 15.0 - float(j), 360.0) / 360.0);;
    vec3 rgb = hsv(h, seed.x * 0.4 + 0.2, 1.0);
    out_color = vec4(rgb, 1.0);
}