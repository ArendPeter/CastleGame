event_inherited()

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

/*{ //////////// DEBUGGING /////////////
	if(mouse_check_button_pressed(mb_left)){
		repeat(20){
			instance_create_layer(mouse_x, mouse_y, layer, oCoin)	
		}
	}
}*/

{ //////////// GOOMBA INTERACT ///////////
    if(state == PLAYER_STATE.in_control and place_meeting(x, y, oGoomba)){
        state = PLAYER_STATE.hurt
        dx = -dx;
	}
}

// //////////// CAMERA /////////////
{
	var cam_x = oPlayer.x - camW()/2
	var cam_y = oPlayer.y - 150

	cam_x = clamp(cam_x, 0, room_width-camW())
	cam_y = clamp(cam_y, 0, room_height-camH())

	camPos(cam_x, cam_y)
}

// //////////// SPAWN JEWEL /////////////
{
	if(!instance_exists(oGoomba) and alarm[0] == -1){
		alarm[0] = room_speed
	}
}