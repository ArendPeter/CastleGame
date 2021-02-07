{ ////////// MOVEMENT ////////
	// horizontal collision
	if(not place_free(x+dx, y)){
		if(abs(dx) >= 2){
			// bounce
			dx = -dx*bounce_factor
		}else{
			// move_contact_solid	
			move_contact_solid((dx > 0)? 0 : 180, abs(dx))
			dx = 0
		}
	}
	
	// friction
	if(not place_free(x, y+1)){
		dx *= fr
	}
	
	// gravity
	dy += grav
	
	// vertical collision
	if(not place_free(x, y+dy)){
		if(abs(dy) >= 2){
			// bounce
			dy = -dy*bounce_factor
		}else{
			// move_contact_solid	
			move_contact_solid((dy > 0)? 270 : 90, abs(dy))
			dy = 0
		}
	}
	
	// apply movement
	x += dx
	y += dy
}

{ ////////// DESPAWN ////////
	if(place_meeting(x, y, oPlayer)){
		instance_destroy();	
	}
	
	despawn_timer--
	if(despawn_timer < 0){
		instance_destroy()	
	}
	
    if(despawn_timer < despawn_anim_steps){
        var t = 1 - (despawn_timer / despawn_anim_steps)
        var ch = animcurve_get_channel(animDespawn, 0)
        var visible_frames = animcurve_channel_evaluate(ch, t)
        var i = despawn_timer % (visible_frames + invisible_frames)
        visible = i < visible_frames
	}
}