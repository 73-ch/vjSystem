#version 150

uniform float time;
uniform vec2 resolution;
uniform vec4 seed;
uniform vec3 cam_pos;
uniform vec3 cam_up;
uniform vec3 cam_dir;
uniform float cam_zoom;

const float sphere_size = 0.2;
// const vec3 light_dir = vec3(-0.577, 0.577, 0.577);

const float PI = acos(-1.);
const float PI_2 = PI * 2.;

out vec4 FragColor;

vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}


float rnd(vec2 p){return fract(sin(dot(p,vec2(15.79,81.93))*45678.9123));}
float noise(vec2 p){vec2 i=floor(p);vec2 f=fract(p);f=f*f*(3.-2.*f);return mix(mix(rnd(i+vec2(0.,0.)),rnd(i+vec2(1.,0.)),f.x),mix(rnd(i+vec2(0.,1.)),rnd(i+vec2(1.,1.)),f.x),f.y);}
float fbm(vec2 uv,float d){float sum=0.;float amp=.7;for(int i=0;i<4;++i){sum+=noise(uv)*amp;uv+=uv*d;amp*=.4;}return sum;}

float makeSphere(vec3 p) {
    return length(p) - sphere_size - 0.05;
}

float ground(vec3 p) {
    return dot(p, vec3(0.,1.,0.)) + 1.0;
}

float plate(vec3 p){
    vec3 q = abs(p);
    return length(max(q - vec3(8., 0.5, 8.), 0.0));
}

float smoothMin(float d1, float d2, float k){
    float h = exp(-k * d1) + exp(-k * d2);
    return -log(h) / k;
}

vec3 foldSphere(vec3 p) {
    vec3 ret = p;
    for (int i = 0; i < 4; i++) {
         if (abs((p.x + i*5.0) / 4. + 0.001) < 2.) ret.x = mod(p.x + i*2.0, 4.) - 2.;
         if (abs((p.z + i*2.0) / 4. + 0.001) < 2.) ret.z = mod(p.z, 4.) - 2.;
    }
    return p;
}

vec3 transSphere(vec3 p) {
    vec3 dp = foldSphere(p);
    return dp + vec3(sin(sin(time * .25) * PI_2), (-exp(cos(time * 0.1) + 1.0)) * 1.0 + 4., cos(pow(sin(time * .25),2.) * PI_2));
    // return dp + vec3(sin(noise(vec2(sin(time * 1.), length(p) * step(length(p), 10.))) * PI_2), (-exp(cos(time * 0.1) + 1.0)) * 1.0 + 4., 0.);
    // return p ;
}


float distanceFunc(vec3 p) {
    float g = ground(p);
    float plate = plate(p + vec3(0.,.5,0.));

    float sphere = makeSphere(transSphere(p));
    float t1 = smoothMin(sphere, plate, 0.8);
    return t1;
}

vec3 getNormal(vec3 p) {
    float d = 0.0001;
    return normalize(vec3(
        distanceFunc(p + vec3(d, 0., 0.)) - distanceFunc(p + vec3 (-d, 0., 0.)),
        distanceFunc(p + vec3(0., d, 0.)) - distanceFunc(p + vec3(0.,-d, 0.)),
        distanceFunc(p + vec3(0., 0., d)) - distanceFunc(p + vec3(0., 0., -d))
    ));
}

vec3 hsv(float h, float s) {
    return cos((vec3(0., 2./3., -2./3.) + h) * PI_2) * (1.-s) + s;
}


void main() {
    vec2 p = (gl_FragCoord.xy * 2.0 - resolution.xy) / min(resolution.x, resolution.y);
    

    // camera
    vec3 cp = cam_pos;
    vec3 cu = normalize(cam_up);
    vec3 cd = normalize(cam_dir);


    vec3 cs = cross(cd, cu);
    float target_depth = 1.;
    
    vec3 ray = normalize(cs * p.x + cu * p.y + cd * target_depth);
    float ray_length = 0.0;

    vec3 ray_position = cp;
    float inter;

    for (int i = 0; i <120; i++) {
        inter = distanceFunc(ray_position);
        ray_length += inter;
        ray_position = cp + ray * ray_length;
    }


    vec3 final_color;

    if (abs(inter) < 0.001) {     
        for (int i= 0; i< 10; i++) {
            vec3 light_dir = normalize(vec3(fbm(vec2(i/10., sin(time * 0.1)),1.2), (cos(time + i * .1 * PI_2) * 0.5 + .5), 0.8));

            vec3 normal = getNormal(ray_position);
            float diff = clamp(dot(light_dir, normal), 0.1, 1.0);
            vec3 halfLE = normalize(light_dir - cd);
            float specular = pow(clamp(dot(halfLE, normal), 0.0, 1.0), 1800.0);

            final_color += vec3(hsv(inter + 0.4 + time * 0.02, 0.9)) * diff + specular * 0.1;
        }
        final_color *= .1;    
        
    } else {
        final_color = vec3(0.2);
    }

    final_color = mix(final_color, vec3(1.0), length(ray_position - cp) * 0.1);

    FragColor = vec4(final_color, 1.0) ;
}