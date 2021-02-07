event_inherited();
/*if(activated){
       y = ystart + shift_y
}else{
       y = ystart
}*/

//y = ystart + activated*shift_y

solid = not activated

var anim_seconds = (activated)? open_seconds : close_seconds
cx = stepTowards(cx, activated, 1/(anim_seconds*room_speed))

var ch_name = (activated)? "open" : "close"
var ch = animcurve_get_channel(animGate, ch_name)
cy = animcurve_channel_evaluate(ch, cx)
y = ystart + cy*shift_y


