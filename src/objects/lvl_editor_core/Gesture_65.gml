/// @description Select objects
if (scr_editor_can_click ())
{
	if (position_empty (event_data [? "posX"], event_data [? "posY"]))
	{
		global.selected_obj = -1
		exit
	}
		
	global.selected_obj = instance_position (event_data [? "posX"], event_data [? "posY"], all)
}