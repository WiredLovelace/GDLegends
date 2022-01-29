/// @description Select objects
if (scr_editor_can_click ())
{
	if (global.selected_obj != noone)
	{
		with (global.selected_obj)
		{
			// TODO: global.col
			image_blend = c_white
		}
	}
	
	if (position_empty (event_data [? "posX"], event_data [? "posY"]))
	{
		global.selected_obj = noone
		exit
	}
		
	global.selected_obj = instance_position (event_data [? "posX"], event_data [? "posY"], all)
}