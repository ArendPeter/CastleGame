in_transition = false

trans_cx = 0
trans_start_cam_x = 0
trans_target_cam_x = camX()
start_cam_y = camY()
trans_seconds = 1

shake_t = 1
shake_max_dist = 5
shake_seconds = .5

function shakeCamera(){
    shake_t = 0
}

function startTransition(){
    if(camL() < oPlayer.x and oPlayer.x < camR()) return;

    trans_cx = 0
    show_debug_message("ZERO")
    show_debug_message(trans_cx)
    trans_start_cam_x = camX()
    if(oPlayer.x < camL())
            trans_target_cam_x = trans_start_cam_x - camW()
    if(oPlayer.x > camR())
            trans_target_cam_x = trans_start_cam_x + camW()
    in_transition = true
}
