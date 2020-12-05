{ //////////// HORIZONTAL MOVEMENT ///////////
	switch(state){
	case PLAYER_STATE.hurt:
		dx *= knockback_fr
		if(abs(dx) < 1){
			state = PLAYER_STATE.in_control
		}
		break;
	case PLAYER_STATE.in_control:
		// input
		dx = (keyboard_check(vk_right) - keyboard_check(vk_left))*mv_speed
		
		// facing
		if(dx != 0) image_xscale = sign(dx) // 1, 0, -1
		break;
	
	default:
		throw ("invalid state");
	}
	
	// collision
	if(not place_free(x+dx, y)) dx = 0
	
	/*if(keyboard_check(vk_right) and place_free(x+mv_speed, y)){
		x += mv_speed
		image_xscale = 1
	}
	
	if(keyboard_check(vk_left) and place_free(x-mv_speed, y)){
		x -= mv_speed
		image_xscale = -1
	}*/
	
	x += dx
}

{ //////////// VERTICAL MOVEMENT ///////////
	// gravity
	dy += grav
	
	// jumping
	if(keyboard_check_pressed(vk_up) and not place_free(x, y+1)){
		dy += jump_speed
	}
	
	// collision
	if(not place_free(x, y+dy)){
		move_contact_solid((dy < 0)? 90 : 270, abs(dy))
		
		dy = 0
	}
	
	// apply dy
	y += dy
}

{ //////////// GOOMBA INTERACT ///////////
	if(state == PLAYER_STATE.in_control and place_meeting(x, y, oGoomba)){
		state = PLAYER_STATE.hurt
		dx = -dx;
	}
}