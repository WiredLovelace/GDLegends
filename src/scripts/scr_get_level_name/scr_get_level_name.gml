// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_level_name(fname){
	if !file_exists ("levels/" + fname)
		return ""
	
	var file = file_text_open_read ("levels/" + fname)

	file_text_readln (file)
	
	var name = file_text_read_string (file)
	file_text_close (file)
	
	return name
}