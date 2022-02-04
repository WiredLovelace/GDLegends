// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_local_levels(dir){
	var i = 0
	var filename = file_find_first (dir, fa_directory)
	
	files[0] = 0
	
	while (filename != "")
	{
		files [i] = filename
		filename = file_find_next ()
		i += 1
	}
	
	array_sort (files, function (a, b)
	{
		return real (b) - real (a)
	})
	
	return files
}