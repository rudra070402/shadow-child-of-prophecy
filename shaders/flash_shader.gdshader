shader_type canvas_item;

uniform vec4 flash_color : source_color = vec4(1.0, 0.0, 0.0, 1.0);
uniform float flash_amount : hint_range(0.0, 1.0) = 0.0;

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    COLOR = mix(tex_color, flash_color, flash_amount * tex_color.a);
}