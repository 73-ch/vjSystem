#version 330

#define PI 3.141592653589793
#define PI_2 6.283185307179586
#define SQRT_2 1.4142135623730951
#define H_SQRT_2 0.7071067811865476
#define SQRT_3 0.8660254037844386

#define L_SIZE 200.
#define SPAN 20.
#define L_SIZE_SPAN L_SIZE/2.+SPAN
// saskia
// tokyo

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

vec3 saskia(float id, float v_num) {
    float devide = 6.0;
    float n = mod(id*devide, v_num);
    float L_NUM = v_num / devide;
    float V_L_NUM = 1.0 / L_NUM;

    vec3 pos = vec3(1000000.0,.0,100000.);

    if (n <= L_NUM) {
        pos = S(n * V_L_NUM)*L_SIZE+vec3(-(L_SIZE_SPAN)*4,.0,.0);
    } else if(n <= L_NUM *2.) {
        pos = A((n - L_NUM) * V_L_NUM) * L_SIZE+vec3(-(L_SIZE_SPAN)*2.5,.0,.0);
    } else if(n <= L_NUM* 3.) {
        pos = S((n - L_NUM * 2.) * V_L_NUM) * L_SIZE+vec3(-L_SIZE_SPAN,.0,.0);
    } else if(n <= L_NUM*4.) {
        pos = K((n - L_NUM*3.) * V_L_NUM) * L_SIZE+vec3((L_SIZE_SPAN),.0,.0);
    } else if(n <= L_NUM*5.) {
        pos = I((n - L_NUM*4.) * V_L_NUM) * L_SIZE+vec3((L_SIZE_SPAN)*2.,.0,.0);
    } else if(n <= L_NUM*6.) {
        pos = A((n - L_NUM*5.) * V_L_NUM) * L_SIZE+vec3((L_SIZE_SPAN)*3.,.0,.0);
    }
    return pos;
}

vec3 tokyo(float id, float v_num) {
    float devide = 5.0;
    float n = mod(id*devide, v_num);
    float L_NUM = v_num / devide;
    float V_L_NUM =  1.0/L_NUM;
    vec3 pos = vec3(1000000.0,.0,100000.);

    if (n <= L_NUM) {
        pos = T(n * V_L_NUM)*L_SIZE+vec3(-(L_SIZE_SPAN)*3.5,.0,.0);
    } else if(n <= L_NUM *2.) {
        pos = O((n - L_NUM) * V_L_NUM) * L_SIZE+vec3(-(L_SIZE_SPAN)*1.75,0.0,0.0);
    } else if(n <= L_NUM* 3.) {
        pos = K((n - L_NUM * 2.) * V_L_NUM) * L_SIZE;
    } else if(n <= L_NUM*4.) {
        pos = Y((n - L_NUM*3.) * V_L_NUM) * L_SIZE+vec3((L_SIZE_SPAN)*1.5,.0,.0);
    } else if(n <= L_NUM*5.) {
        pos = O((n - L_NUM*4.) * V_L_NUM) * L_SIZE+vec3((L_SIZE_SPAN)*3.,.0,.0);
    }

    return pos;
}



void main() {
    float id = mod(gl_VertexID, vertex_num);
    float v_num = vertex_num;
    float v_time = time * 2.;

    
    vec3 pos_saskia = saskia(id, v_num);
    vec3 pos_tokyo = tokyo(id, v_num);
    

    // vec3 pos2 = vec3(sin(t/cos(t)) * 400., cos(t*t) * 400., mod(t +v_time + fract(gl_VertexID /vertex_num * 10.0), 100.));

    // pos *= sin(v_time + gl_VertexID * 0.000002);
    // pos_saskia += fract(gl_VertexID/10.) * 50. * sin(v_time);

    float t = gl_VertexID / vertex_num + cos(v_time + length(pos_saskia +fract(v_time)));


    float a = fract(time);
    // a = clamp(sin((seed.y + v_time*.5))*3.-1.5, 0., 1.);
    
    vec3 final = mix(pos_saskia, pos_tokyo, a);

    gl_Position = modelViewProjectionMatrix * vec4(final,1.0);


    v_color = vec4((normalize(final)+vec3(1.0))*.25, 1.0);


    // gl_PointSize = max(5 * cos(t+t*t), 10.);
    gl_PointSize = 3.0;
}