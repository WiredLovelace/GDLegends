function scr_ring_set() {
	if (keyboard_check_pressed (vk_up) || mouse_check_button_pressed (mb_left)) && !place_meeting (x, y + vsp * gravdir, obj_wall)
		canring = 1



}
