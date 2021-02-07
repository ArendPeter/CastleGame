var cam_x, cam_y;

if(in_transition){
	// transition
	trans_cx = stepTowards(trans_cx, 1, 1 / (trans_seconds*room_speed))
	var ch = animcurve_get_channel(animCameraSlide, 0)
	var cy = animcurve_channel_evaluate(ch, trans_cx)
	cam_x = lerp(trans_start_cam_x, trans_target_cam_x, cy)
	cam_y = start_cam_y
	if(trans_cx == 1) in_transition = false
}else{
	cam_x = trans_target_cam_x
	cam_y = start_cam_y
	//check transition start
	if(oPlayer.x-16 > camR() or oPlayer.x+16 < camL()){
		startTransition()
	}
}

// shake
shake_t = stepTowards(shake_t, 1, 1 / (shake_seconds * room_speed))
var ch_x = animcurve_get_channel(animCameraShake, "x")
cam_x += shake_max_dist*animcurve_channel_evaluate(ch_x, shake_t)
var ch_y = animcurve_get_channel(animCameraShake, "y")
cam_y += shake_max_dist*animcurve_channel_evaluate(ch_y, shake_t)

//clamp to room
cam_x = clamp(cam_x, 0, room_width-camW())
cam_y = clamp(cam_y, 0, room_width-camH())

// apply position
camPos(cam_x, cam_y)


