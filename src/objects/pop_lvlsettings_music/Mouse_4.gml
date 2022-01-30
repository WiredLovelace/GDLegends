/// @description TODO: Change the song

global.music += 1 * image_xscale

if global.music == snd_dead || !audio_exists (global.music)
{
	// TODO: Come to the last available song
	global.music += 1 * -image_xscale
}

// show_debug_message (audio_get_name (global.music + (1 * image_xscale)))