// movement
if(keyboard_check(vk_right)){
	x += 4	
	image_xscale = 1
}

if(keyboard_check(vk_left)){
	x -= 4	
	image_xscale = -1
}

// view follow player
/*var cam_x = x - camera_get_view_width(view_camera[0])/2
var cam_y = y - 150
cam_x = clamp(cam_x, 0, room_width-camera_get_view_width(view_camera[0]))
cam_y = clamp(cam_y, 0, room_height-camera_get_view_height(view_camera[0]))
camera_set_view_pos(
	view_camera[0],
	cam_x,
	cam_y
)*/

var target_x = x - camW()/2
var target_y = y - 150
var cam_x = lerp(camX(), target_x, .2)
var cam_y = lerp(camY(), target_y, .2)
cam_x = clamp(cam_x, 0, room_width-camW())
cam_y = clamp(cam_y, 0, room_height-camH())
camPos(cam_x, cam_y)
