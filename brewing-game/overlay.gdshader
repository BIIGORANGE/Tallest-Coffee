shader_type spatial;

//pixelation shader to add retro vibe
//see more here: https://www.youtube.com/watch?v=c8d2Mz--1sM
render_mode unshaded, fog_disabled;

uniform float pixel_size : hint_range(0.0, 20.0, 0.1);

uniform sampler2D screen_texture :hint_screen_texture,  repeat_disable;

void vertex() {
	POSITION = vec4(VERTEX.xy, 1.0, 1.0); 
}

void fragment() {
	vec2 texture_size = vec2(textureSize(screen_texture, 0));
	vec2 pixel_count = texture_size / (pixel_size*2.);
	vec2 pixelated_UV = floor(SCREEN_UV * pixel_count) / pixel_count;
	vec4 color = texture(screen_texture, pixelated_UV);
	
	ALBEDO = color.rgb;
	ALPHA = color.a;
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
