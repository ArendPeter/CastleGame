function get_color(col_name){
    var c = animcurve_channel_evaluate(animcurve_get_channel(animDamage, col_name), damage_x)
    return 255*clamp(c, 0, 1)
}

draw_self()

var color = make_color_rgb(
    get_color("red"),
    get_color("green"),
    get_color("blue")
)
var a = animcurve_channel_evaluate(animcurve_get_channel(animDamage, "alpha"), damage_x)
image_alpha = a

gpu_set_fog(true, color, 0, 1)
draw_self()
gpu_set_fog(false, color, 0, 1)
image_alpha = 1