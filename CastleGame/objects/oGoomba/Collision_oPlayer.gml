var goomba_col_box_top = sprite_get_bbox_top(sprite_index) * image_yscale
var player_col_box_bottom = sprite_get_bbox_bottom(oPlayer.sprite_index) * oPlayer.image_yscale

var goomba_top = y - sprite_yoffset + goomba_col_box_top
var player_bottom = oPlayer.y - oPlayer.sprite_yoffset + player_col_box_bottom

var vertical_collision = (player_bottom - goomba_top) < oPlayer.dy
if(vertical_collision){
	with(oPlayer){
		bounce()	
	}
	repeat(20){
		instance_create_layer(x, y-17, layer, oCoin)
	}
	instance_destroy()
}else{
	game_restart()
}