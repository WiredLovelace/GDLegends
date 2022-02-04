// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_load_lvl (fname){
	if !file_exists ("levels/" + fname)
		exit
		
	var file = file_text_open_read ("levels/" + fname)
	
	var version = file_text_read_real (file)
	file_text_readln (file)
	
	var name = file_text_read_string (file)
	file_text_readln (file)
	
	global.initial_bgcolor = file_text_read_real (file)
	file_text_readln (file)
	
	global.initial_gcolor = file_text_read_real (file)
	file_text_readln (file)
	
	global.music = file_text_read_real (file)
	file_text_readln (file)
	
	file_text_readln (file) // Background sprite
	file_text_readln (file) // Ground sprite
	
	// TODO: global.col
	for (var i = 0; i < 1000; i++)
	{
		file_text_readln (file)
	}
	
	while !file_text_eof(file)
	{
		var obj_name = file_text_read_string (file)
		file_text_readln (file)
		
		var obj_id = asset_get_index (obj_name)
		
		var group = file_text_read_real (file)
		file_text_readln (file)
		
		var col = file_text_read_real (file)
		file_text_readln (file)
		
		var insx = file_text_read_real (file)
		file_text_readln (file)
		
		var insy = file_text_read_real (file)
		file_text_readln (file)
		
		var insang = file_text_read_real (file)
		file_text_readln (file)
		
		var insxscale = file_text_read_real (file)
		file_text_readln (file)
		
		var insyscale = file_text_read_real (file)
		file_text_readln (file)
		
		var ins = instance_create_layer (insx, insy, "LevelInstances", obj_id)
		ins.group = group
		ins.col = col
		
		ins.image_xscale = insxscale
		ins.image_yscale = insyscale
		ins.image_angle = insang
	}
	
	file_text_close (file)
}