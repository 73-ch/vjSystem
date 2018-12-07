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
#define wordinput float id, float v_num, float size, float span
float rnd(vec2 p){return fract(sin(dot(p,vec2(15.79,81.93))*45678.9123));}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f*f*(3.-2.*f);

    float bottomOfGrid = mix( rnd( i + vec2( 0.0, 0.0 ) ), rnd( i + vec2( 1.0, 0.0 ) ), f.x );
    float topOfGrid = mix( rnd( i + vec2( 0.0, 1.0 ) ), rnd( i + vec2( 1.0, 1.0 ) ), f.x );

    return mix( bottomOfGrid, topOfGrid, f.y );
}

float fbm( vec2 uv , float diff)
{
    float sum = 0.00;
    float amp = 0.7;
    
    for( int i = 0; i < 4; ++i ){
        sum += noise( uv ) * amp;
        uv += uv * diff;
        amp *= 0.4;
    }
    return sum;
}

vec3 saskia(wordinput) {
    float devide = 6.0;
    float n = mod(id*devide, v_num);
    float L_NUM = v_num / devide;
    float V_L_NUM = 1.0 / L_NUM;

    if (n <= L_NUM) {
        return S(n * V_L_NUM)*size+vec3(-(span)*4,.0,.0);
    } else if(n <= L_NUM *2.) {
        return A((n - L_NUM) * V_L_NUM) * size+vec3(-(span)*2.5,.0,.0);
    } else if(n <= L_NUM* 3.) {
        return S((n - L_NUM * 2.) * V_L_NUM) * size+vec3(-span,.0,.0);
    } else if(n <= L_NUM*4.) {
        return K((n - L_NUM*3.) * V_L_NUM) * size+vec3((span),.0,.0);
    } else if(n <= L_NUM*5.) {
        return I((n - L_NUM*4.) * V_L_NUM) * size+vec3((span)*2.,.0,.0);
    } else {
        return A((n - L_NUM*5.) * V_L_NUM) * size+vec3((span)*3.,.0,.0);
    }
}

vec3 tokyo(wordinput) {
    float n = mod(id*5.0, v_num);
    float L_NUM = v_num / 5.0;
    float V_L_NUM =  1.0/L_NUM;
    if (n <= L_NUM) {
        return T(n * V_L_NUM)*size+vec3(-(span)*3.5,.0,.0);
    } else if(n <= L_NUM *2.) {
        return O((n - L_NUM) * V_L_NUM) * size+vec3(-(span)*1.75,0.0,0.0);
    } else if(n <= L_NUM* 3.) {
        return K((n - L_NUM * 2.) * V_L_NUM) * size;
    } else if(n <= L_NUM*4.) {
        return Y((n - L_NUM*3.) * V_L_NUM) * size+vec3((span)*1.5,.0,.0);
    } else {
        return O((n - L_NUM*4.) * V_L_NUM) * size+vec3((span)*3.,.0,.0);
    }
}

vec3 maxmsp(wordinput) {
    float n = mod(id*6., v_num);
    float L_NUM = v_num / 6.;
    float V_L_NUM = 1.0 / L_NUM;

    if (n <= L_NUM) {
        return M(n * V_L_NUM)*size+vec3(-(span)*4,.0,.0);
    } else if(n <= L_NUM *2.) {
        return A((n - L_NUM) * V_L_NUM) * size+vec3(-(span)*2.25,.0,.0);
    } else if(n <= L_NUM* 3.) {
        return X((n - L_NUM * 2.) * V_L_NUM) * size+vec3(-span*.75,.0,.0);
    } else if(n <= L_NUM*4.) {
        return M((n - L_NUM*3.) * V_L_NUM) * size+vec3((span)*.75,.0,.0);
    } else if(n <= L_NUM*5.) {
        return S((n - L_NUM*4.) * V_L_NUM) * size+vec3((span)*2.25,.0,.0);
    } else {
        return P((n - L_NUM*5.) * V_L_NUM) * size+vec3((span)*3.75,.0,.0);
    }
}

vec3 vacant(wordinput) {
    float n = mod(id*6.0, v_num);
    float L_NUM = v_num / 6.0;
    float V_L_NUM = 1.0 / L_NUM;

    if (n <= L_NUM) {
        return V(n * V_L_NUM)*size+vec3(-(span)*3.75,.0,.0);
    } else if(n <= L_NUM *2.) {
        return A((n - L_NUM) * V_L_NUM) * size+vec3(-(span)*2.5,.0,.0);
    } else if(n <= L_NUM* 3.) {
        return C((n - L_NUM * 2.) * V_L_NUM) * size+vec3(-span*.75,.0,.0);
    } else if(n <= L_NUM*4.) {
        return A((n - L_NUM*3.) * V_L_NUM) * size+vec3((span)*.75,.0,.0);
    } else if(n <= L_NUM*5.) {
        return N((n - L_NUM*4.) * V_L_NUM) * size+vec3((span)*2.25,.0,.0);
    } else {
        return T((n - L_NUM*5.) * V_L_NUM) * size+vec3((span)*3.75,.0,.0);
    }
}

float vertex_i = gl_VertexID / float(vertex_num);

void main() {
    float id = mod(gl_VertexID, vertex_num);
    float v_num = vertex_num;
    float v_time = time * 1.;

    float size = 200;
    float span = size / 2. + 20.*exp(fract(v_time));

    // float th_x = (gl_VertexID + time * 100.) / float(vertex_num) * 2 * PI;
    // float th_y = (float(vertex_num) - gl_VertexID + rnd(vec2(time, vertex_i)) * 100.) / float(vertex_num) * PI_2;
    // float r = 500. * sin(2. * th_y) - 250.;
    // vec3 a_pos = vec3(cos(th_x) * cos(r)*r + rnd(vec2(exp(vertex_i) /gl_VertexID, 0.378347)) * 1000., rnd(vec2(cos(th_y), rnd(vec2(vertex_i, 0.89393939)))) + sin(th_x) * sin(r + time * 2.) * r + rnd(vec2(gl_VertexID, seed.y)), 500. * sin(2 * th_y+time)  + rnd(vec2(gl_VertexID, seed.z)) * 500.) - vec3(noise(vec2(time* 0.1, gl_VertexID)-0.25) * 4000., 0. ,0.);
    // a_pos.x -= 500.;

    // pos_a & effect
    vec3 pos_a = vacant(id, v_num, size, span);

    // pos *= sin(v_time + gl_VertexID * 0.000002);
    // pos_saskia += fract(gl_VertexID/10.) * 50. * sin(v_time);

    // pos_b & effect
    vec3 pos_b = maxmsp(id, v_num, size, span);

    // morph param
    float mp;
    // mp = fract(v_time);
    mp = clamp(sin((seed.y + v_time*.5))*3.-1.5, 0., 1.);
    
    // final output
    vec3 final;
    final = mix(pos_a, pos_b, mp);

    gl_Position = modelViewProjectionMatrix * vec4(final,1.0);


    v_color = vec4((normalize(final)+vec3(1.0))*.25, 1.0);
    // float t = vertex_i + cos(v_time + length(final +fract(v_time)));

    // gl_PointSize = max(5 * cos(t+t*t), 10.);
    gl_PointSize = 3.0;
}