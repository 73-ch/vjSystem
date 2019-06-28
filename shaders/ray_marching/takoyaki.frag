#version 150

uniform float time;
uniform vec2 resolution;
uniform vec4 seed;
uniform vec3 cam_pos;
uniform vec3 cam_up;
uniform vec3 cam_dir;

const float sphere_size = 0.9;
const vec3 light_dir = vec3(-0.577, 0.577, 0.577);

const vec3 koge_color = vec3(.55, .3, .15);
const vec3 kiji_color = vec3(.91,.71,.48);
const vec3 sauce_color = vec3(.5, .13, .08);

out vec4 FragColor;

struct Intersect {
    float distance;
    int obj_id;
};


// ashima noise !!!!!
vec3 mod289(vec3 x) {
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

vec4 mod289(vec4 x) {
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

vec4 permute(vec4 x) {
     return mod289(((x*34.0)+1.0)*x);
}

vec4 taylorInvSqrt(vec4 r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}

float snoise(vec3 v)
  { 
  const vec2  C = vec2(1.0/6.0, 1.0/3.0) ;
  const vec4  D = vec4(0.0, 0.5, 1.0, 2.0);

// First corner
  vec3 i  = floor(v + dot(v, C.yyy) );
  vec3 x0 =   v - i + dot(i, C.xxx) ;

// Other corners
  vec3 g = step(x0.yzx, x0.xyz);
  vec3 l = 1.0 - g;
  vec3 i1 = min( g.xyz, l.zxy );
  vec3 i2 = max( g.xyz, l.zxy );

  //   x0 = x0 - 0.0 + 0.0 * C.xxx;
  //   x1 = x0 - i1  + 1.0 * C.xxx;
  //   x2 = x0 - i2  + 2.0 * C.xxx;
  //   x3 = x0 - 1.0 + 3.0 * C.xxx;
  vec3 x1 = x0 - i1 + C.xxx;
  vec3 x2 = x0 - i2 + C.yyy; // 2.0*C.x = 1/3 = C.y
  vec3 x3 = x0 - D.yyy;      // -1.0+3.0*C.x = -0.5 = -D.y

// Permutations
  i = mod289(i); 
  vec4 p = permute( permute( permute( 
             i.z + vec4(0.0, i1.z, i2.z, 1.0 ))
           + i.y + vec4(0.0, i1.y, i2.y, 1.0 )) 
           + i.x + vec4(0.0, i1.x, i2.x, 1.0 ));

// Gradients: 7x7 points over a square, mapped onto an octahedron.
// The ring size 17*17 = 289 is close to a multiple of 49 (49*6 = 294)
  float n_ = 0.142857142857; // 1.0/7.0
  vec3  ns = n_ * D.wyz - D.xzx;

  vec4 j = p - 49.0 * floor(p * ns.z * ns.z);  //  mod(p,7*7)

  vec4 x_ = floor(j * ns.z);
  vec4 y_ = floor(j - 7.0 * x_ );    // mod(j,N)

  vec4 x = x_ *ns.x + ns.yyyy;
  vec4 y = y_ *ns.x + ns.yyyy;
  vec4 h = 1.0 - abs(x) - abs(y);

  vec4 b0 = vec4( x.xy, y.xy );
  vec4 b1 = vec4( x.zw, y.zw );

  //vec4 s0 = vec4(lessThan(b0,0.0))*2.0 - 1.0;
  //vec4 s1 = vec4(lessThan(b1,0.0))*2.0 - 1.0;
  vec4 s0 = floor(b0)*2.0 + 1.0;
  vec4 s1 = floor(b1)*2.0 + 1.0;
  vec4 sh = -step(h, vec4(0.0));

  vec4 a0 = b0.xzyw + s0.xzyw*sh.xxyy ;
  vec4 a1 = b1.xzyw + s1.xzyw*sh.zzww ;

  vec3 p0 = vec3(a0.xy,h.x);
  vec3 p1 = vec3(a0.zw,h.y);
  vec3 p2 = vec3(a1.xy,h.z);
  vec3 p3 = vec3(a1.zw,h.w);

//Normalise gradients
  vec4 norm = taylorInvSqrt(vec4(dot(p0,p0), dot(p1,p1), dot(p2, p2), dot(p3,p3)));
  p0 *= norm.x;
  p1 *= norm.y;
  p2 *= norm.z;
  p3 *= norm.w;

// Mix final noise value
  vec4 m = max(0.6 - vec4(dot(x0,x0), dot(x1,x1), dot(x2,x2), dot(x3,x3)), 0.0);
  m = m * m;
  return 42.0 * dot( m*m, vec4( dot(p0,x0), dot(p1,x1), 
                                dot(p2,x2), dot(p3,x3) ) );
  }

vec2 random2(vec2 st){
    st = vec2( dot(st,vec2(127.1,311.7)),
              dot(st,vec2(269.5,183.3)) );
    return -1.0 + 2.0*fract(sin(st)*43758.5453123);
}

float noise(vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);

    vec2 u = f*f*(3.0-2.0*f);

    return mix( mix( dot( random2(i + vec2(0.0,0.0) ), f - vec2(0.0,0.0) ),
                     dot( random2(i + vec2(1.0,0.0) ), f - vec2(1.0,0.0) ), u.x),
                mix( dot( random2(i + vec2(0.0,1.0) ), f - vec2(0.0,1.0) ),
                     dot( random2(i + vec2(1.0,1.0) ), f - vec2(1.0,1.0) ), u.x), u.y);
}

// referencefrom https://github.com/jamieowen/glsl-blend/blob/master/normal.glsl
vec3 blendNormal(vec3 base, vec3 blend) {
	return blend;
}

vec3 blendNormal(vec3 base, vec3 blend, float opacity) {
	return (blendNormal(base, blend) * opacity + base * (1.0 - opacity));
}

vec3 trans(vec3 p) {
    float span = 2.0;
    return vec3(abs(p.x / span) < 2. ? mod(p.x, span) - span * .5 : p.x, p.y + (sin(time*3. + floor(p.x / span)) - 1.), abs(p.z / span) < 1. ? mod(p.z, span) - span * .5 : p.z);
}

vec3 transplate(vec3 p) {
    float span = 2.0;
    return vec3(abs(p.x / span) < 2. ? mod(p.x, span) - span * .5 : p.x, p.y , abs(p.z / span) < 2. ? mod(p.z, span) - span * .5 : p.z);
}

float takoyakiA(vec3 p) {
    return length(trans(p)) - sphere_size + snoise(p * 3.)  * 0.006;
}

float sphere(vec3 p) {
    return length(transplate(p)) - sphere_size - 0.05;
}

float ground(vec3 p) {
    return dot(p, vec3(0.,1.,0.)) + 1.0;
}

float plate(vec3 p){
    vec3 q = abs(p);
    return length(max(q - vec3(5., 0.5, 5.), 0.0));
}


Intersect distanceFunc(vec3 p) {
    float g = ground(p);
    float plate = plate(p + vec3(0.,.5,0.));
    float plate_hole = sphere(p);
    plate = max(plate, -plate_hole);
    float t1 = takoyakiA(p);

    if (int(time) % 4 == 0) {
        t1 = plate;
    }

    return plate > t1 ? Intersect(t1, 0) : Intersect(plate, 1);
    // return Intersect(plate, 1);
}

vec3 getNormal(vec3 p) {
    float d = 0.0001;
    return normalize(vec3(
        distanceFunc(p + vec3(d, 0., 0.)).distance - distanceFunc(p + vec3 (-d, 0., 0.)).distance,
        distanceFunc(p + vec3(0., d, 0.)).distance - distanceFunc(p + vec3(0.,-d, 0.)).distance,
        distanceFunc(p + vec3(0., 0., d)).distance - distanceFunc(p + vec3(0., 0., -d)).distance
    ));
}


void main() {
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = gl_FragCoord.xy/resolution.xy;

    // Time varying pixel color
    vec3 col = 0.5 + 0.5*cos(time+uv.xyx+vec3(0,2,4));

    // Output to screen
    vec2 p = (gl_FragCoord.xy * 2.0 - resolution.xy) / min(resolution.x, resolution.y);
    

    // camera
    // vec3 cam_pos = vec3(0.,2.,5.0);
    // vec3 cam_dir = vec3(0.,-.5,-1.0);

    vec3 camera_side = cross(cam_dir, cam_up);
    float target_depth = 1.0;
    
    vec3 ray = normalize(camera_side * p.x + cam_up * p.y + cam_dir * target_depth);
    
    Intersect inter = Intersect(0.0, -1);
    float ray_length = 0.0;
    vec3 ray_position = cam_pos;
    for (int i = 0; i <60; i++) {
        inter = distanceFunc(ray_position);
        ray_length += inter.distance;
        ray_position = cam_pos + ray * ray_length;
    }
    
    if (abs(inter.distance) < 0.001) {
        vec3 normal = getNormal(ray_position);
        float diff = clamp(dot(light_dir, normal), 0.1, 1.0);
        vec3 halfLE = normalize(light_dir - cam_dir);
        float specular = pow(clamp(dot(halfLE, normal), 0.0, 1.0), 1800.0);

        vec3 final_color;

        if (inter.obj_id == 0 && int(time) % 4 >= 1) {
            float sauce_length = (normal.y +1.0) * .5;
        
            final_color= mix(kiji_color, koge_color, snoise(ray_position * 3.));
            

            // sauce phase
            if (int(time) % 4 >= 2) {
                final_color = blendNormal(final_color, sauce_color, step(0.7 + noise(ray_position.xz * 2.0 + 0.) * 0.4,sauce_length) * 0.75);
            }
            
            // final_color = yaki_color;

            // mayo phase 
            if (int(time) % 4 >= 3) {
                final_color = abs(sin(ray_position.z * 15.) * 10. - ray_position.x +  noise(vec2(ray_position.zx))) + step(0.7, dot(abs(normal), vec3(0.,0.,1.))) * 6. < 5. ? vec3(1.0) : final_color;
            }
            
            
            FragColor = vec4(final_color * diff + vec3(0.1,0.05,0.01), 1.0);
        } else if (inter.obj_id == 1) {
            FragColor = vec4(vec3(0.1) * diff, 1.0);
        }
    } else {
        FragColor = vec4(vec3(0.62, .35, .12), 1.0);
    }
}