event_inherited()
dx = 0
dy = 0

mv_speed = 4
grav = .5
jump_speed = -10

knockback_fr = .9;

state = PLAYER_STATE.in_control

damage_x = 1
damage_seconds = .5

enum PLAYER_STATE {
    in_control,
	hurt
}

state = PLAYER_STATE.in_control
function bounce(){
	dy = jump_speed	
}