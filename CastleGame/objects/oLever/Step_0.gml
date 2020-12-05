event_inherited()

if(place_meeting(x, y, oPlayer) and keyboard_check_pressed(vk_space)){
	image_index = 1 - image_index;
	setActivatables((image_index == 0)? false : true)
}