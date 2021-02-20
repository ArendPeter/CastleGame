// back
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
// lever
for(var i = 0; i < ds_list_size(angles); i++){
	
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, angles[| i], image_blend, power(.8, i+1))
}
draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
// front
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)