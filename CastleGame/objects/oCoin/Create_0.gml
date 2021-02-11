var start_sp = 8
var start_dir = random(360)
dx = lengthdir_x(start_sp, start_dir)
dy = lengthdir_y(start_sp, start_dir)

grav = .5
bounce_factor = .5
fr = .9

despawn_timer = 7 * room_speed
despawn_anim_steps = 4 * room_speed
invisible_frames = 2