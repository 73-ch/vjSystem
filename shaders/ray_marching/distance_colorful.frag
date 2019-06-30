#version 150
uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;

out vec4 mainColor;

float fold(float x) {
	float span = -abs(sin(time));
	return x / span < 5.0 ? mod(x, span) - span * .5 : x;
}

vec3 trans(vec3 p) {	
	return vec3(
		fold(p.x), fold(p.y), fold(p.z)
	);
}

float makeSphere(vec3 p) {
	return length(trans(p)) - 1.0;
}

void main( void ) {
	vec2 p = (gl_FragCoord.xy * 2. - resolution) / min(resolution.x, resolution.y);
	
	vec3 cam_pos = vec3(sin(time * 0.5) * 2., cos(time * 0.5) * 2. , sin(time) * 2.);
	vec3 cam_up = vec3(0.,1.,0.);
	vec3 cam_dir = normalize(-cam_pos);
	vec3 cam_side = cross(cam_dir, cam_up);
	
	vec3 ray = normalize(cam_side * p.x + cam_up * p.y + cam_dir);
	
	
	vec3 d = vec3(p, 0.4);
	
	vec3 ray_pos = cam_pos;
	float ray_length = 0.;
	float inter = 0.;
	
	for (int i = 0; i < 100; i++) {
		inter = makeSphere(ray_pos);
		ray_length += inter;
 		ray_pos = cam_pos + ray * ray_length;
		
		d.yzx = normalize(abs(ray_pos)) * (abs(d) / dot(d,d) - (normalize(abs(inter * ray_pos)) * .1));
	}
	
	vec3 color = vec3(.0);
	
	if (inter < 0.001) {
		color = d;
	}		
	
	mainColor = vec4(color, 1.0);
}