// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_transform_selectedobj(){
	if (global.selected_obj == -1 || global.testing || !instance_exists (global.selected_obj))
		exit
	
	if (keyboard_check (vk_control) && keyboard_check_pressed (ord ("D")))
	{
		// TODO: Should I move this to a different script?
		var ins = instance_create_layer (global.selected_obj.x, global.selected_obj.y, "LevelInstances", global.selected_obj.object_index)
		ins.group = global.selected_obj.group
		ins.col = global.selected_obj.col
		ins.image_angle = global.selected_obj.image_angle
		ins.image_xscale = global.selected_obj.image_xscale
		ins.image_yscale = global.selected_obj.image_yscale
			
		global.selected_obj = ins
	}
		
	// Moving transformations with the keyboard
	if (keyboard_check_pressed (ord ("D")))
	{
		global.selected_obj.x += 61
	}
	if (keyboard_check_pressed (ord ("A")))
	{
		global.selected_obj.x -= 61
	}
	if (keyboard_check_pressed (ord ("W")))
	{
		global.selected_obj.y -= 61
	}
	if (keyboard_check_pressed (ord ("S")))
	{
		global.selected_obj.y += 61
	}
	
	// Rotation transformations
	if (keyboard_check_pressed (ord ("Q")))
	{
		global.selected_obj.image_angle += 90
	}
	if (keyboard_check_pressed (ord ("E")))
	{
		global.selected_obj.image_angle -= 90
	}
	if (keyboard_check_pressed (vk_delete))
	{
		instance_destroy (global.selected_obj)
		global.selected_obj = -1
	}
}