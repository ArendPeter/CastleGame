event_inherited()

if(place_meeting(x, y, oPlayer) and keyboard_check_pressed(vk_space)){
    enabled = !enabled;
    cx = 0
    setActivatables(enabled)
}

cx = min(1, cx + 1/(trans_seconds*room_speed))

var ch = animcurve_get_channel(animLever, 0)
cy = animcurve_channel_evaluate(ch, cx);
var target_angle = (enabled)? -start_angle : start_angle
var prev_angle = -target_angle

image_angle = lerp(prev_angle, target_angle, cy)
