draw_self()

function get_color(color_name){
	var ch = animcurve_get_channel(animColor, color_name)
	var yy = animcurve_channel_evaluate(ch, cx)
	return clamp(yy, 0, 1)
}

var color = make_color_rgb(
	255*get_color("red"),
	255*get_color("green"),
	255*get_color("blue"),
)

image_alpha = get_color("alpha")
gpu_set_fog(true, color, 0, 1)
draw_self()
gpu_set_fog(false, color, 0, 1)
image_alpha = 1