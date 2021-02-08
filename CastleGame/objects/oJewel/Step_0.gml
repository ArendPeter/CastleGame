cx = stepTowards(cx, 1, 1 / (spawn_seconds*room_speed))
var ch = animcurve_get_channel(animSpawn, 0)
var cy = animcurve_channel_evaluate(ch, cx)
image_xscale = cy 
image_yscale = cy 