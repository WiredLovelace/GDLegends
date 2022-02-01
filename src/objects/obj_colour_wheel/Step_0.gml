/// @description Destroy and change colour

if pop_parent == -1 || !instance_exists (pop_parent) || pop_parent.closing
	instance_destroy ()

if mouse_check_button_pressed (mb_left) && position_meeting (mouse_x, mouse_y, id)
{
	current_col = draw_getpixel_ext (device_mouse_raw_x (0),
									 device_mouse_raw_y (0))
}