// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_save_lvl(fname, save_instances){
	// if save_instances == 0 that means we are saving a template, basically, we are not saving a level with objects
	var file = file_text_open_write ("levels/" + fname)
	
	// First, level metadata
	file_text_write_real (file, 1) // the version of the save script
	file_text_writeln (file)
	
	file_text_write_string (file, global.lvl_name)
	file_text_writeln (file)
	
	file_text_write_real (file, save_instances == 0 ? make_colour_rgb (40, 62, 255) : global.initial_bgcolor)
	file_text_writeln (file)
	
	file_text_write_real (file, save_instances == 0 ? make_colour_rgb (0, 19, 200) : global.initial_gcolor)
	file_text_writeln (file)
	
	file_text_write_real (file, save_instances == 0 ? StereoMadness : global.music)
	file_text_writeln (file)
	
	file_text_write_real (file, 0) // background sprite
	file_text_writeln (file)
	
	file_text_write_real (file, 0) // ground sprite
	file_text_writeln (file)
	
	// TODO: global.col
	for (var i = 0; i < 1000; i++)
	{
		file_text_write_real (file, c_white)
		file_text_writeln (file)
	}
	
	if (!save_instances)
	{
		// We just want to save the metadata
		file_text_close (file)
		exit
	}
	
	var instances = layer_get_all_elements("LevelInstances")
	
	for (var i = 0; i < array_length (instances); i++)
	{
		var layer_elm = instances[i]
		var instance = layer_instance_get_instance (layer_elm)
		var name = object_get_name (instance.object_index)
		
		file_text_write_string (file, name)
		file_text_writeln (file)
		
		file_text_write_real (file, instance.group)
		file_text_writeln (file)
		file_text_write_real (file, instance.col)
		file_text_writeln (file)
		
		file_text_write_real (file, instance.x)
		file_text_writeln (file)
		file_text_write_real (file, instance.y)
		file_text_writeln (file)
		
		file_text_write_real (file, instance.image_angle)
		file_text_writeln (file)
		file_text_write_real (file, instance.image_xscale)
		file_text_writeln (file)
		file_text_write_real (file, instance.image_yscale)
		file_text_writeln (file)
	}
	
	file_text_close (file)
}