instance_create (-182, obj_ground.y - 30, obj_player)

var songs = tag_get_asset_ids("GameMusic", asset_sound)
audio_play_sound (songs [global.music], 0, 1)

with obj_trigger_par
{
	activated = 0
	next = 0
	next_step = 0
}

global.bgcolor = global.initial_bgcolor
global.gcolor = global.initial_gcolor

obj_camera.respawning = 0

instance_destroy ()
