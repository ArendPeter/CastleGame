{ //////////// HORIZONTAL MOVEMENT ///////////	
	if(keyboard_check(vk_right) and place_free(x+4, y)){
		x += 4
		image_xscale = 1
	}
	
	if(keyboard_check(vk_left) and place_free(x-4, y)){
		x -= 4
		image_xscale = -1
	}
}

{ //////////// VERTICAL MOVEMENT ///////////
	// gravity
	dy += .5
	
	// jumping
	if(keyboard_check_pressed(vk_up) and not place_free(x, y+1)){
		dy -= 10
	}
	
	// collision
	if(not place_free(x, y+dy)){
		if(dy < 0){
			move_contact_solid(90, abs(dy))
		}else{
			move_contact_solid(270, abs(dy))
		}
		dy = 0
	}
	
	// apply dy
	y += dy
}