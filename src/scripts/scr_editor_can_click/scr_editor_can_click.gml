// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_can_click(){
	// This script basically checks that we can click to create, select or delete an object, for example
	return !global.testing && (global.negrito * -1) > depth
	
			&& !position_meeting (event_data [? "posX"], event_data [? "posY"], lvl_editor_objsel)
			&& !position_meeting (event_data [? "posX"], event_data [? "posY"], obj_ground)
			&& !position_meeting (event_data [? "posY"], event_data [? "posY"], obj_ground2)
}