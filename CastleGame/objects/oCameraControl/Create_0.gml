in_transition = false
trans_cx = 0
trans_start_cam_x = 0
trans_target_cam_x = 0
trans_seconds = 1

function startTransition(){
	in_transition = true
	trans_cx = 0
	trans_start_cam_x = camX()
	if(oPlayer.x > camR())
		trans_target_cam_x = trans_start_cam_x + camW()
	if(oPlayer.x < camL())
		trans_target_cam_x = trans_start_cam_x - camW()
}