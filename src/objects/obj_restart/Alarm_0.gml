instance_create (-182, obj_ground.y - 30, obj_player)
audio_play_sound_on (global.music_emitter, global.music, 0, 1)

with obj_trigger_par
{
	activated = 0
	next = 0
	next_step = 0
}

global.bgcolor = global.initial_bgcolor
global.gcolor = merge_color (global.initial_gcolor, c_black, 0.3)

obj_camera.respawning = 0

instance_destroy ()
