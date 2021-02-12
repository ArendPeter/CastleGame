var cam_x, cam_y;

// initialize cam x/y
cam_x = shake_max_dist
cam_y = shake_max_dist

// follow player
/*cam_x = oPlayer.x - camW()/2
cam_y = oPlayer.y - 150*/

// clamp to room
cam_x = clamp(cam_x, shake_max_dist, room_width-camW()-shake_max_dist)
cam_y = clamp(cam_y, shake_max_dist, room_height-camH()-shake_max_dist)

// shake
shake_cx = stepTowards(shake_cx, 1, 1 / (shake_seconds * room_speed))
var ch_x = animcurve_get_channel(animShake, "x")
var x_offset = animcurve_channel_evaluate(ch_x, shake_cx)
var ch_y = animcurve_get_channel(animShake, "y")
var y_offset = animcurve_channel_evaluate(ch_y, shake_cx)
cam_x += x_offset
cam_y += y_offset

// apply position
camPos(cam_x, cam_y)

if(keyboard_check_pressed(ord("R"))){
	game_restart()	
}