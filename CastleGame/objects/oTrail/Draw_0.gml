for(var i = 0; i < ds_list_size(frames); i++){
	var f = frames[| i]
	draw_sprite_ext(
		sprite_index,
		f.frame,
		f.x,
		f.y,
		f.xscale,
		1,
		0,
		c_white,
		(i+1)/(num_frames+1)
	)
}

draw_self()
