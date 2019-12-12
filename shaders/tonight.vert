#version 330

#define PI 3.141592653589793
#define PI_2 6.283185307179586
#define SQRT_2 1.4142135623730951
#define H_SQRT_2 0.7071067811865476
#define SQRT_3 0.8660254037844386

uniform float time;
uniform int vertex_num;
uniform vec4 seed;
uniform mat4 modelViewProjectionMatrix;
uniform vec3 cam_pos;

out vec4 v_color;

vec3 A(float a){return vec3((vec2(a*1.25-.5,((mod(a*1.25,.5)-.25)*2.)*-sign(step(.4,a)-.1))*step(-.7999,-a)+vec2((a-.8)*2.5-.25,.0)*step(.8,a))*vec2(.8,1.),0.);}
vec3 B(float a){return vec3(vec2(max(cos(PI_2*a),-.5)*.75-.25,sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3))*(1.-step(-.5,cos(PI_2*a))*.5)+.5*step(-.5,cos(PI_2*a))*sign(mod(a,.001)-.00051))*.5,0.);}
vec3 C(float a){return vec3(cos((.25+a*1.5)*PI),sin((.25+a*1.5)*PI),0.)*.5;}
vec3 D(float a){return vec3(vec2(max(cos(PI_2*a),-.5)-.25,sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3)))*.5,0.);}
vec3 E(float a){return vec3(vec2(max(3.6*mod(a,.33333),.6)-.9,min(-0.5+floor(a*3.)+step(-0.166666,-mod(a,.333333)),max((mod(a,.333333)*3.-.5)*sign(-a+.33333), -1.+.5*(floor(3.*a-.000001)+1.)*step(.166666,mod(a,.333333))))),.0);}
vec3 F(float a){return vec3(vec2(max(2.2*mod(a,.50001),.6)-.8,max((mod(a,.50001)*2.-.5)*sign(a-.50001), -.5+.5*(floor(2.*a-.00001)+1.)*step(.25,mod(a,.50001)))),.0);}
vec3 G(float a){return vec3(vec2(cos((.27+(a*1.25)*1.5)*PI),sin((.27+(a*1.25)*1.5)*PI))*step(-.8,-a)+vec2(cos(H_SQRT_2),-(a-.8)*10.*sin(H_SQRT_2))*step(-.9,-a)*step(.80001,a)+vec2((a-.9)*cos(H_SQRT_2)*10.,0.)*step(.9,a),0.)*.5;}
vec3 H(float a){return vec3(vec2(step(.4,a)*.6-.3,mod(a,.4)*2.5-.5)*step(-.80001,-a-.0001)+vec2((a-.8)*3.-.3,.0)*step(.8,a),.0);}
vec3 I(float a){return vec3(0.,a-.5,0.);}
vec3 J(float a){return vec3(vec2(max(cos(PI_2*a),step(.0,sin(PI_2*a))*2.-1.)*.6,sin(PI_2*a)*(1.+2.*step(.0,sin(PI_2*a)))*.5-.5)*.5,0.);}
vec3 K(float a){return vec3(vec2(max(2.4*mod(a,.50001),.6)-.9,(mod(a,.50001)*2.-.5)*sign(a-.50001)),.0);}
vec3 L(float a){return vec3(vec2(-.3,a*2.-.5)*step(-.5,-a)+vec2((a-.5)*1.2-.3,-.5)*step(.500001,a),.0);}
vec3 M(float a){return vec3((a-.5)*.9,-(mod(a,.25)-.125)*4./(1.+step(-.24999,-abs(a-.5)))*-sign(step(-.24999999,-mod(a,.5))-.1)+.25*step(-.24999,-abs(a-.5)),.0);}
vec3 N(float a){return vec3(vec2(sign(a*2.-1.)*min(abs(a*1.8-.9),.3)*1.2,-mod(a,.33333333)*3.+.5),.0);}
vec3 O(float a){return vec3(cos(a*PI_2)*.45,sin(a*PI_2)*.5,.0);}
vec3 P(float a){return vec3(vec2(max(cos(PI_2*a),-.5)*.75-.25,sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3))*(1.-step(-.5,cos(PI_2*a))*.5)+.5*step(-.5,cos(PI_2*a)))*.5,0.);}
vec3 Q(float a){return vec3(vec2(cos(a*PI_2*1.25)*.45,sin(a*PI_2*1.25)*.5)*step(-0.8001,-a)+vec2(a-.6, -(a-.5))*step(0.8001,a),.0);}
vec3 R(float a){return vec3(vec2(max(cos(PI_2*a),-.5)*.75-.25+4*(mod(a,.5)+.1)*step(.5,a)*step(-.66666666,-a)*step(.0,mod(a,.001)-.00051),sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3))*(1.-step(-.5,cos(PI_2*a))*.5)+.5*step(-.5,cos(PI_2*a)))*.5,0.);}
vec3 S(float a){return vec3((vec2(cos((a*2.)*PI_2),(abs(sin((a*2.)*PI_2))+1.)*sign(a-.250001))*step(-.5,-a)+vec2(cos(a*PI_2),(sin(a*PI_2)+1.) * sign(a-.75))*step(.5000001,a))*vec2(.3,-.25),.0);}
vec3 T(float a){return vec3(vec2(0.,a*2.-.5)*step(-.5,-a)+vec2((a-.5)*1.6-.4,.5)*step(.500001,a),.0);}
vec3 U(float a){return vec3(vec2(max(cos(PI_2*a), step(.001,sin(PI_2*a))*2.-1.)*sign(.00001+cos(PI_2*a)+step(.001,-sin(PI_2*a)))*.6,sin(PI_2*a)*(1.+2.*step(.0,sin(PI_2*a)))*.5-.5)*.5,0.);}
vec3 V(float a){return vec3((a-.5)*.8,((mod(a,.50001)-.25)*2)*sign(step(.50001,a)-.1),0.);}
vec3 W(float a){return vec3((a-.5)*.9,(mod(a,.25)-.125)*4./(1.+step(-.24999,-abs(a-.5)))*-sign(step(-.24999999,-mod(a,.5))-.1)-.25*step(-.24999,-abs(a-.5)),.0);}
vec3 X(float a){return vec3(vec2(1.2*mod(a,.50001)-.3,(mod(a,.50001)*2.-.5)*sign(a-.50001)),.0);}
vec3 Y(float a){return vec3(vec2((1.2*mod(a,.50001)-.3)*sign(a-.50001)*step(.25,mod(a,.50001)),(mod(a,.50001)*2.-.5)),.0);}
vec3 Z(float a){return vec3(vec2(mod(a,.33333333)*2.4-.4,sign(a*2.-1.)*min(abs(a*3.-1.5),.5)),.0);}

float rnd(vec2 p){return fract(sin(dot(p,vec2(15.79,81.93))*45678.9123));}
float noise(vec2 p){vec2 i=floor(p);vec2 f=fract(p);f=f*f*(3.-2.*f);return mix(mix(rnd(i+vec2(0.,0.)),rnd(i+vec2(1.,0.)),f.x),mix(rnd(i+vec2(0.,1.)),rnd(i+vec2(1.,1.)),f.x),f.y);}
float fbm(vec2 uv,float d){float sum=0.;float amp=.7;for(int i=0;i<4;++i){sum+=noise(uv)*amp;uv+=uv*d;amp*=.4;}return sum;}

#define wordinput float id, float v_num, float si, float sp

vec3 createMADZINE(wordinput){float n=mod(id*7.,v_num);float l=v_num/7.;if(n<=l)return M(n/l)*si+vec3(-(sp)*4.5,.0,.0);if(n<=l*2.)return A((n-l)/l)*si+vec3(-(sp)*2.75,.0,.0);if(n<=l*3.)return D((n-l*2.)/l)*si+vec3(-sp*1.25,.0,.0);if(n<=l*4.)return Z((n-l*3.)/l)*si+vec3(sp*.25,.0,.0);if(n<=l*5.)return I((n-l*4.)/l)*si+vec3((sp)*1.5,.0,.0);if(n<=l*6.)return N((n-l*5.)/l)*si+vec3((sp)*2.8,.0,.0);return E((n-l*6.)/l)*si+vec3((sp)*4.5,.0,.0);}
vec3 createMusic(wordinput) {float n=mod(id*5.,v_num);float l=v_num/5.;if(n<=l){return M(n/l)*si+vec3(-(sp)*3.5,.0,.0);}if(n<=l*2.){return U((n-l)/l)*si+vec3(-(sp)*1.75,0.0,0.0);}if(n<=l*3.){return S((n-l*2.)/l)*si;}if(n<=l*4.){return I((n-l*3.)/l)*si+vec3((sp)*1.25,.0,.0);}return C((n-l*4.)/l)*si+vec3((sp)*3.,.0,.0);}
vec3 createTonight(wordinput) {float n=mod(id*7.,v_num);
float l=v_num/7.;
if(n<=l)return T(n/l)*si+vec3(-(sp)*4.5,.0,.0);
if(n<=l*2.)return O((n-l)/l)*si+vec3(-(sp)*3.,.0,.0);
if(n<=l*3.)return N((n-l*2.)/l)*si+vec3(-sp*1.15,.0,.0);
if(n<=l*4.)return I((n-l*3.)/l)*si+vec3(0,.0,.0);
if(n<=l*5.)return G((n-l*4.)/l)*si+vec3((sp)*1.45,.0,.0);
if(n<=l*6.)return H((n-l*5.)/l)*si+vec3((sp)*3.,.0,.0);
return T((n-l*6.)/l)*si+vec3((sp)*4.5,.0,.0);
}

float id =  float(gl_VertexID);
float vf = id / vertex_num;

vec3 createSphere(float id, float res) {
    vec3 out_pos;
    float t = floor(PI_2*id*res*res)/res;
    out_pos.y = (1.+floor(id * res)*2.) / res - 1.;
    out_pos.x = sin(t)*sin(acos(out_pos.y));
    out_pos.z = cos(t)*sin(acos(out_pos.y));
    // floor(id*res)/res
    return out_pos;
}

vec3 createCylinder(float id, float res) {
    vec3 out_pos;
    float t = floor(PI_2*id*res*res)/res;
    out_pos.y = (1.+floor(id * res)*2.) / res - 1.;
    out_pos.x = sin(t);
    out_pos.z = cos(t);
    return out_pos;
}

vec3 createPlane(float id, float res) {
    return vec3(floor(id*res)/res*2.-1.,0.,floor(mod(id, 1./res)*res*res)/res*2.-1.);
}

#define wordCreateInput gl_VertexID, vertex_num, t_size, t_span

void main() {
    vec3 final;
    float size = 400.;
    float t_size = 200.;
    float t_span = t_size / 2. + 20.;
    
    vec3 shape;
    
    vec3 a = P(fract(vf*1.));
    vec3 cylinder =  createCylinder(vf, 10.);
    vec3 plane = createPlane(vf, 10.);

    shape = mix(plane, cylinder, clamp(0.,1., sin(time)*1.5+.5));

    shape*= size;

    // final = mix(shape,vec3(0.), sin(time));
    final = createTonight(wordCreateInput);
    final = mix(final, shape, sin(time));
    // final *= size;
    // final = createProject(wordCreateInput);

    gl_Position = modelViewProjectionMatrix * vec4(final, 1.0);
    // gl_PointSize = mix(1.0,4.0, clamp(0.,1., sin(time)*1.5+.5));
    v_color = vec4(1.0);
}