// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_session(){
	var file = file_text_open_write ("sessid")
	
	file_text_write_string(file, global.session_id)
	file_text_writeln (file)
	
	file_text_close (file)
}