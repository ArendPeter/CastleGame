var cam_x = oPlayer.x - camW()/2
var cam_y = oPlayer.y - 150

cam_x = clamp(cam_x, 0, room_width-camW())
cam_y = clamp(cam_y, 0, room_width-camH())

camPos(cam_x, cam_y)