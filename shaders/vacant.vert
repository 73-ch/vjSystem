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
vec3 N(float a){return vec3(vec2(sign(a*2.-1.)*min(abs(a*1.8-.9),.3),-mod(a,.33333333)*3.+.5),.0);}
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
vec3 saskia(wordinput){float n=mod(id*6.,v_num);float l=v_num/6.;if(n<=l){return S(n/l)*si+vec3(-(sp)*3.5,.0,.0);} if(n<=l*2.){return A((n-l)/l)*si+vec3(-(sp)*2.,.0,.0);}if(n<=l*3.){return S((n-l*2.)/l)*si+vec3(-sp*.5,.0,.0);}if(n<=l*4.){return K((n-l*3.)/l)*si+vec3((sp),.0,.0);}if(n<=l*5.){return I((n-l*4.)/l)*si+vec3((sp)*2.25,.0,.0);}return A((n-l*5.)/l)*si+vec3((sp)*3.5,.0,.0);}
vec3 tokyo(wordinput){float n=mod(id*5.,v_num);float l=v_num/5.;if(n<=l){return T(n/l)*si+vec3(-(sp)*3.5,.0,.0);}if(n<=l*2.){return O((n-l)/l)*si+vec3(-(sp)*1.75,0.0,0.0);}if(n<=l*3.){return K((n-l*2.)/l)*si;}if(n<=l*4.){return Y((n-l*3.)/l)*si+vec3((sp)*1.5,.0,.0);}return O((n-l*4.)/l)*si+vec3((sp)*3.,.0,.0);}
vec3 maxmsp(wordinput){float n=mod(id*6.,v_num);float l=v_num/6.;if(n<=l)return M(n/l)*si+vec3(-(sp)*4,.0,.0);if(n<=l*2.)return A((n-l)/l)*si+vec3(-(sp)*2.25,.0,.0);if(n<=l*3.)return X((n-l*2.)/l)*si+vec3(-sp*.75,.0,.0);if(n<=l*4.)return M((n-l*3.)/l)*si+vec3((sp)*.75,.0,.0);if(n<=l*5.)return S((n-l*4.)/l)*si+vec3((sp)*2.25,.0,.0);return P((n - l*5.)/l) * si+vec3((sp)*3.75,.0,.0);}
vec3 ableton(wordinput){float n=mod(id*7.,v_num);float l=v_num/7.;if(n<=l)return A(n/l)*si+vec3(-(sp)*4.5,.0,.0);if(n<=l*2.)return B((n-l)/l)*si+vec3(-(sp)*3.,.0,.0);if(n<=l*3.)return L((n-l*2.)/l)*si+vec3(-sp*1.75,.0,.0);if(n<=l*4.)return E((n-l*3.)/l)*si+vec3(-sp*.25,.0,.0);if(n<=l*5.)return T((n-l*4.)/l)*si+vec3((sp)*1.25,.0,.0);if(n<=l*6.)return O((n-l*5.)/l)*si+vec3((sp)*2.8,.0,.0);return N((n - l*6.) / l) * si+vec3((sp)*4.5,.0,.0);}
vec3 vacant(wordinput) {float n=mod(id*6.,v_num);float l=v_num/6.;if(n<=l)return V(n/l)*si+vec3(-(sp)*3.75,.0,.0);if(n<=l*2.)return A((n-l)/l)*si+vec3(-(sp)*2.5,.0,.0);if(n<=l*3.)return C((n-l*2.)/l)*si+vec3(-sp*.75,.0,.0);if(n<=l*4.)return A((n-l*3.)/l)*si+vec3((sp)*.75,.0,.0);if(n<=l*5.)return N((n-l*4.)/l)*si+vec3((sp)*2.25,.0,.0);return T((n-l*5.)/l)*si+vec3((sp)*3.75,.0,.0);}


float vertex_i = gl_VertexID / float(vertex_num);

void main() {
    float id = mod(gl_VertexID, vertex_num);
    float v_num = vertex_num;
    float v_time = time + seed.x;

    float size = 200.;
    float span = size / 2. + 20.;

    float th_x = (gl_VertexID + time * 100.) / float(vertex_num) * 2 * PI;
    float th_y = (float(vertex_num) - gl_VertexID + rnd(vec2(cos(time + seed.x), vertex_i)) * 100.) / float(vertex_num) * PI_2;
    float r = 500. * sin(2. * th_y) - 250.;
    vec3 a_pos = vec3(cos(th_x) * cos(r)*r + rnd(vec2(exp(vertex_i) /gl_VertexID, 0.378347)) * 1000., rnd(vec2(cos(th_y), rnd(vec2(vertex_i, 0.89393939)))) + sin(th_x) * sin(r + time * 2.) * r + rnd(vec2(gl_VertexID, seed.y)), 500. * sin(2 * th_y+time)  + rnd(vec2(gl_VertexID, seed.z)) * 500.) - vec3(noise(vec2(time* 0.1, gl_VertexID)-0.25) * 4000., 0. ,0.);
    a_pos.x -= 500.;

    // pos_a & effect
    vec3 pos_a_a = maxmsp(id + seed.x*0.01, v_num, size, span);
    vec3 pos_a_b = ableton(id + seed.x*0.01, v_num, size, span);

    float amp = step(0.5, fract(v_time*.2));
    amp = clamp(mod(abs(sin(v_time))*3., 3.0)-1.5, 0.0, 1.0);

    vec3 pos_a = mix(pos_a_a, pos_a_b, amp);
    

    a_pos *= sin(v_time + gl_VertexID * 0.000002);
    // pos_saskia += fract(gl_VertexID/10.) * 50. * sin(v_time);
    // vec3 new_pos = vec3(cos(v_time), sin(v_time, id)) * 100.;

    // pos_b & effect
    vec3 pos_b = tokyo(id, v_num, size, span);
    pos_b.z = a_pos.z;
    pos_b.y = a_pos.b;
    pos_b.x = a_pos.x;
    // pos_b.x += sin(time + seed.x);

    // morph param
    float mp;
    mp = clamp(sin(v_time)*3., 0., 1.0);
    // final output
    vec3 final;
    final = pos_a;
    final = mix(pos_a, pos_b, mp);

    // final = maxmsp(id, v_num, size, span);
    gl_Position = modelViewProjectionMatrix * vec4(final,1.0);


    v_color = vec4(1.0);
    v_color = vec4(cos(v_time*PI_2)*.5,mp*amp+.5, (fbm(vec2(mp, dot(pos_a_a,pos_a_b)),1.2)+ abs(sin(v_time*.25)))*1.25, 1.0);
    float t = vertex_i + cos(v_time + length(final +fract(v_time)));

    gl_PointSize = 4.0;
    gl_PointSize = min(5. * cos(t*t), 4.);
}
