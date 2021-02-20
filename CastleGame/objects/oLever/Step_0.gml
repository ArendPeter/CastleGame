event_inherited()

// interaction
if(/*place_meeting(x, y, oPlayer) and */keyboard_check_pressed(vk_space)){
	image_angle = -image_angle;
	enabled = !enabled
	cx = 0
	setActivatables(enabled)
}

// animation
cx = stepTowards(cx, 1, 1 / (trans_seconds*room_speed))

var ch = animcurve_get_channel(animLever, 0)
var cy = animcurve_channel_evaluate(ch, cx)

var target = (enabled)? -start_angle : start_angle
var prev = -target
image_angle = lerp(prev, target, cy)

step++
if(step%gap == 0){
	ds_list_insert(angles, 0, image_angle)	
}