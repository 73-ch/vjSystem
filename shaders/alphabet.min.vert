float m_floor(float x, float scale, float devide) {
    return mod(floor(x*scale),devide);
}

#define bit(a,b) m_floor(a,b,2.)

#define f float
#define re return
#define v2 vec2
#define v3 vec3
#define v4 vec4

v3 B(f a){f t=(mod(a,.125)*8.+bit(a,4.)+.5)*PI;f e=bit(a,8.);v2 r=v2(max(cos(t)*.5+floor(a*2.),0.)*(1.-e*.05)-.75,sin(t)*.5+e-.5);r.y=a>.25&&a<.75?round(r.y):r.y;r*=v2(.5,.5);re v3(r,0.);}
v3 C(d a){f t = (.15+a*1.7)*PI;re v3(cos(t)*.45,sin(t)*.5,0.);}