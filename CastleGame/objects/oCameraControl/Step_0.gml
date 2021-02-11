var cam_x, cam_y;

if(in_transition){
	trans_cx = stepTowards(trans_cx, 1, 1 / (trans_seconds*room_speed))
	
	// TODO: animcurve stuff
	var ch = animcurve_get_channel(animCameraTransition, 0)
	var cy = animcurve_channel_evaluate(ch, trans_cx)
	
	
	cam_x = lerp(trans_start_cam_x, trans_target_cam_x, cy)
	
	if(cy == 1){
		in_transition = false	
	}
	
	cam_y = camY()
}else{
	cam_x = camX()
	cam_y = camY()
	
	// player follow logic
	/*cam_x = oPlayer.x - camW()/2
	cam_y = oPlayer.y - 150*/
	
	// camera shake
	// TODO
	
	// enter transition
	if(oPlayer.x > camR() or oPlayer.x < camL()){
		startTransition()
	}
}

// clamp within room
cam_x = clamp(cam_x, 0, room_width-camW())
cam_y = clamp(cam_y, 0, room_width-camH())

// apply position
camPos(cam_x, cam_y)