event_inherited();

/*if(activated){
	y = ystart + shift_y
}else{
	y = ystart
}*/


solid = not activated

var seconds, channel_name;
if(activated){
	seconds = open_seconds
	channel_name = "open"
}else{
	seconds = close_seconds
	channel_name = "close"
}

cx = stepTowards(cx, activated, 1 / (seconds*room_speed))

var ch = animcurve_get_channel(animGate, channel_name)
cy = animcurve_channel_evaluate(ch, cx)

y = ystart + cy*shift_y