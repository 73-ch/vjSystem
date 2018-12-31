float roundCenter(float a, float x) {
    return a > 0.25 && a < .75 ? round(x) : x;
}

float m_floor(float x, float scale, float devide) {
    return mod(floor(x*scale),devide);
}

#define bit(a,b) m_floor(a,b,2.)

/*0.8*/vec3 A(float a){
    return vec3((vec2(a*1.25-.5,((mod(a*1.25,.5)-.25)*2.)*-sign(step(.4,a)-.1))*step(-.8,-a)+vec2((a-.8)*3.25-.325,-.15)*step(.8,a))*vec2(.9,1.),0.);
}

/*0.8*/vec3 B(float a){
    float t = (mod(a,.125)*8.+bit(a,4.)+.5)*PI;
    float e = bit(a,8.);

    vec2 r;
    r.x = max(cos(t)*.5+floor(a*2.),0.)*(1.-e*.05)-.75;
    r.y = sin(t)*.5+e-.5;
    r.y = a > 0.25 && a < .75 ? round(r.y) : k.y;
    
    k *= vec2(.5,.5);

    return vec3(k,0.);
}

vec3 C(float a){
    float t = (.15+a*1.7)*PI;
    return vec3(cos(t)*.45,sin(t)*.5,0.);
}