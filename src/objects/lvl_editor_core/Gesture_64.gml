/// @description Place objects

if (scr_editor_can_click () && global.place_obj != noone)
{
	// TODO: image_blend = global.col [col]
	if (global.selected_obj != noone)
		with (global.selected_obj)
			image_blend = c_white
	
	boj = instance_create_layer (mouse_x, mouse_y, "LevelInstances", global.place_obj)
	global.selected_obj = boj
	with (boj)
	{
		if !place_snapped (30.5, 30.5)
			move_snap (30.5, 30.5)
	}
	
	if boj.x % 61 == 0
	{
		boj.x += 30.5
	}
	
	if boj.y % 61 == 0
	{
		boj.y += 30.5
	}
	
	if (int64 (boj.x / 61) > int64 (mouse_x / 61))
		boj.x -= 61
		
	if (int64 (boj.y / 61) > int64 (mouse_y / 61))
		boj.y -= 61
}