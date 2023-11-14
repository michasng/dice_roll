shader_type spatial;

// render_mode diffuse_toon, specular_toon;

uniform sampler2D face;

varying vec3 some_color;
varying vec2 tex_position;

void vertex() {
	some_color = NORMAL;
	tex_position = UV.xy;
	// UV = vec3(3,2,1);
}

void fragment() {
	ALBEDO = texture(face, tex_position).xyz;
}
