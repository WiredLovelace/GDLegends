/// @description Change the song

if !((global.negrito * -1) > depth)
	exit

global.music += 1 * image_xscale

if global.music > array_length (songs) - 1
{
	global.music = 0
} else if global.music < 0
{
	global.music = array_length (songs) - 1
}

// show_debug_message (audio_get_name (global.music + (1 * image_xscale)))