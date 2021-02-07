if(place_meeting(x, y, oPlayer) and keyboard_check_pressed(vk_space)){
       image_index = 1 - image_index;
       gate.activated = not gate.activated;
}
