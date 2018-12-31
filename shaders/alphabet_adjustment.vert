#version 330

#define PI 3.141592653589793
#define PI_2 6.283185307179586
#define SQRT_2 1.4142135623730951
#define H_SQRT_2 0.7071067811865476
#define SQRT_3 0.8660254037844386

in vec3 position;
in vec2 texcoord;
in vec3 normal;
in vec3 color;


uniform float time;
uniform int vertex_num;
uniform vec4 seed;
uniform mat4 modelViewProjectionMatrix;
uniform vec3 cam_pos;

out vec4 v_color;

float m_floor(float x, float scale, float devide) {
    return mod(floor(x*scale),devide);
}

#define bit(a,b) m_floor(a,b,2.)

#define f float
#define re return
#define v2 vec2
#define v3 vec3
#define v4 vec4

/*0.8*/vec3 A(float a){return vec3((vec2(a*1.25-.5,((mod(a*1.25,.5)-.25)*2.)*-sign(step(.4,a)-.1))*step(-.8,-a)+vec2((a-.8)*3.25-.325,-.15)*step(.8,a))*vec2(.9,1.),0.);}
/*0.8*/
v3 B(f a){f t=(mod(a,.125)*8.+bit(a,4.)+.5)*PI;f e=bit(a,8.);v2 r=v2(max(cos(t)*.5+floor(a*2.),0.)*(1.-e*.05)-.75,sin(t)*.5+e-.5);r.y=a>.25&&a<.75?round(r.y):r.y;r*=v2(.5,.5);re v3(r,0.);}

v3 C(d a){f t = (.15+a*1.7)*PI;re v3(cos(t)*.45,sin(t)*.5,0.);}



/*0.8*/vec3 D(float a){return vec3(vec2(max(cos(PI_2*a),-.5)-.25,sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3)))*.5,0.);}
/*0.8*/vec3 E(float a){return vec3(vec2(max(3.6*mod(a,.33333),.6)-.9,min(-0.5+floor(a*3.)+step(-0.166666,-mod(a,.333333)),max((mod(a,.333333)*3.-.5)*sign(-a+.33333), -1.+.5*(floor(3.*a-.000001)+1.)*step(.166666,mod(a,.333333))))),.0);}
/*0.8*/vec3 F(float a){return vec3(vec2(max(2.2*mod(a,.50001),.6)-.8,max((mod(a,.50001)*2.-.5)*sign(a-.50001), -.5+.5*(floor(2.*a-.00001)+1.)*step(.25,mod(a,.50001)))),.0);}
/*0.8*/vec3 G(float a){return vec3(vec2(cos((.27+(a*1.25)*1.5)*PI),sin((.27+(a*1.25)*1.5)*PI))*step(-.8,-a)+vec2(cos(H_SQRT_2),-(a-.8)*10.*sin(H_SQRT_2))*step(-.9,-a)*step(.80001,a)+vec2((a-.9)*cos(H_SQRT_2)*10.,0.)*step(.9,a),0.)*.5;}
/*0.8*/vec3 H(float a){return vec3(vec2(step(.4,a)*.6-.3,mod(a,.4)*2.5-.5)*step(-.80001,-a-.0001)+vec2((a-.8)*3.-.3,.0)*step(.8,a),.0);}
/*0.8*/vec3 I(float a){return vec3(0.,a-.5,0.);}
/*0.8*/vec3 J(float a){return vec3(vec2(max(cos(PI_2*a),step(.0,sin(PI_2*a))*2.-1.)*.6,sin(PI_2*a)*(1.+2.*step(.0,sin(PI_2*a)))*.5-.5)*.5,0.);}
/*0.8*/vec3 K(float a){return vec3(vec2(max(2.4*mod(a,.50001),.6)-.9,(mod(a,.50001)*2.-.5)*sign(a-.50001)),.0);}
/*0.8*/vec3 L(float a){return vec3(vec2(-.3,a*2.-.5)*step(-.5,-a)+vec2((a-.5)*1.2-.3,-.5)*step(.500001,a),.0);}
/*0.8*/vec3 M(float a){return vec3((a-.5)*.9,-(mod(a,.25)-.125)*4./(1.+step(-.24999,-abs(a-.5)))*-sign(step(-.24999999,-mod(a,.5))-.1)+.25*step(-.24999,-abs(a-.5)),.0);}
/*0.8*/vec3 N(float a){return vec3(vec2(sign(a*2.-1.)*min(abs(a*1.8-.9),.3),-mod(a,.33333333)*3.+.5),.0);}
/*0.8*/vec3 O(float a){return vec3(cos(a*PI_2)*.45,sin(a*PI_2)*.5,.0);}
/*0.8*/vec3 P(float a){return vec3(vec2(max(cos(PI_2*a),-.5)*.75-.25,sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3))*(1.-step(-.5,cos(PI_2*a))*.5)+.5*step(-.5,cos(PI_2*a)))*.5,0.);}
/*0.8*/vec3 Q(float a){return vec3(vec2(cos(a*PI_2*1.25)*.45,sin(a*PI_2*1.25)*.5)*step(-0.8001,-a)+vec2(a-.6, -(a-.5))*step(0.8001,a),.0);}
/*0.8*/vec3 R(float a){return vec3(vec2(max(cos(PI_2*a),-.5)*.75-.25+4*(mod(a,.5)+.1)*step(.5,a)*step(-.66666666,-a)*step(.0,mod(a,.001)-.00051),sin(PI_2*a)/max(step(0.,cos(PI_2*a)),max(abs(sin(PI_2*a)),SQRT_3))*(1.-step(-.5,cos(PI_2*a))*.5)+.5*step(-.5,cos(PI_2*a)))*.5,0.);}
/*0.8*/vec3 S(float a){return vec3((vec2(cos((a*2.)*PI_2),(abs(sin((a*2.)*PI_2))+1.)*sign(a-.250001))*step(-.5,-a)+vec2(cos(a*PI_2),(sin(a*PI_2)+1.) * sign(a-.75))*step(.5000001,a))*vec2(.3,-.25),.0);}
/*0.8*/vec3 T(float a){return vec3(vec2(0.,a*2.-.5)*step(-.5,-a)+vec2((a-.5)*1.6-.4,.5)*step(.500001,a),.0);}
/*0.8*/vec3 U(float a){return vec3(vec2(max(cos(PI_2*a), step(.001,sin(PI_2*a))*2.-1.)*sign(.00001+cos(PI_2*a)+step(.001,-sin(PI_2*a)))*.6,sin(PI_2*a)*(1.+2.*step(.0,sin(PI_2*a)))*.5-.5)*.5,0.);}
/*0.8*/vec3 V(float a){return vec3((a-.5)*.8,((mod(a,.50001)-.25)*2)*sign(step(.50001,a)-.1),0.);}
/*0.8*/vec3 W(float a){return vec3((a-.5)*.9,(mod(a,.25)-.125)*4./(1.+step(-.24999,-abs(a-.5)))*-sign(step(-.24999999,-mod(a,.5))-.1)-.25*step(-.24999,-abs(a-.5)),.0);}
/*0.8*/vec3 X(float a){return vec3(vec2(1.2*mod(a,.50001)-.3,(mod(a,.50001)*2.-.5)*sign(a-.50001)),.0);}
/*0.8*/vec3 Y(float a){return vec3(vec2((1.2*mod(a,.50001)-.3)*sign(a-.50001)*step(.25,mod(a,.50001)),(mod(a,.50001)*2.-.5)),.0);}
/*0.8*/vec3 Z(float a){return vec3(vec2(mod(a,.33333333)*2.4-.4,sign(a*2.-1.)*min(abs(a*3.-1.5),.5)),.0);}
float vertex_i = gl_VertexID / float(vertex_num);

void main() {
    float id = mod(gl_VertexID, vertex_num);
    float v_num = vertex_num;
    float v_time = time + seed.x;

    vec3 final;

    vertex_i = mod(vertex_i,.5)*2.;

    if (gl_VertexID < vertex_num * .5) {
        final = C(vertex_i) * 100.;
    } else {
        final = vec3(-.5*sign(mod(gl_VertexID,2.)-.5),vertex_i-.5,0.) * 100.;
    }
    gl_Position = modelViewProjectionMatrix * vec4(final, 1.0);

    gl_PointSize = 4.0;
}
