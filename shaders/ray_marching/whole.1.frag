#version 150
uniform vec2  resolution;     // resolution (width, height)
uniform vec2  mouse;          // mouse      (0.0 ~ 1.0)
uniform float time;           // time       (1second == 1.0)
uniform sampler2D backbuffer; // previous scene

out vec4 mainColor;

#define trans(x) (mod(x,5.)-2.5)

float sdBox( vec3 p, vec3 b ) {
  vec3 d = abs(p) - b;
  return length(max(d,0.0));
         + min(max(d.x,max(d.y,d.z)),0.0); // remove this line for an only partially signed sdf 
}

float sphere(vec3 p) {
	return length(p) -1.;	
}


float distanceFunction(vec3 p) {
	vec3 trans_p = vec3(p.xy, trans(p.z));
	
	vec3 trans_bp = trans(p);
	
	float s =  sphere(trans_p);
	
	float b = sdBox(trans_bp, vec3(1.0,1.0,1.0));
	
	return min(s,b);
}

void main(void) {
	vec2 p = (gl_FragCoord.xy * 2. - resolution) / min(resolution.x, resolution.y);
	
	vec3 camera_pos = vec3 (0.0, 0., 2.0 + time);
	
	float screen_z = 1.;
	vec3 ray_direction = normalize(vec3(p, screen_z));
	
	float depth = 0.0;
	float col = 0.0;
	
	for (int i = 0; i < 100; i++) {
		vec3 ray_pos = camera_pos + ray_direction * depth;
		float dist = distanceFunction(ray_pos);
		dist = max(abs(dist), 0.02);
		
		ray_direction = normalize(ray_direction + trans(ray_pos) * 0.02 * sin(time * 0.02) * step(-0.05, -dist));
		
		col += 0.005;
		depth += dist* 0.5;
	}
	
	mainColor = vec4(vec3(col)*(1. - exp(-0.001*depth*depth)),1.0);
}