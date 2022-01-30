// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_can_click(){
	// This script basically checks that we can click to create, select or delete an object, for example
	return !global.testing && (global.negrito * -1) > depth
			&& event_data [? "posY"] < room_height && event_data [? "posX"] < room_width
			&& event_data [? "posX"] > 0 && event_data [? "posY"] > 0
			&& event_data [? "posY"] < camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.4)
	
			&& !position_meeting (event_data [? "posX"], event_data [? "posY"], lvl_editor_objsel)
			&& !position_meeting (event_data [? "posX"], event_data [? "posY"], obj_ground)
			&& !position_meeting (event_data [? "posY"], event_data [? "posY"], obj_ground2)
			&& !position_meeting (event_data [? "posX"], event_data [? "posY"], lvl_editor_settings)
			&& !position_meeting (event_data [? "posX"], event_data [? "posY"], obj_title_popup)
}