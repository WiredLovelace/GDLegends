if (room == rm_lvl_editor)
	exit

global.bgcolor = global.initial_bgcolor
global.gcolor = merge_color (global.initial_gcolor, c_black, 0.3)

var songs = tag_get_asset_ids("GameMusic", asset_sound)
audio_play_sound (songs [global.music], 0, 1)

alarm[0] = room_speed * 2
