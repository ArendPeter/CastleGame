dx = 0
dy = 0

mv_speed = 4
grav = .5
jump_speed = -10

knockback_fr = .9;

enum PLAYER_STATE {
	in_control,
	hurt
}

state = PLAYER_STATE.in_control

cx = 1
cy = 0
damage_seconds = 1