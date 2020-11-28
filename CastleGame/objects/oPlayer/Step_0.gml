if(keyboard_check(vk_right) and place_free(x+mv_speed, y)){
	x += mv_speed
	image_xscale = 1
}
	
if(keyboard_check(vk_left) and place_free(x-mv_speed, y)){
	x -= mv_speed
	image_xscale = -1
}