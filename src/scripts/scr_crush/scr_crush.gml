function scr_crush() {
	global.spdboost = 1
	// TODO:Fireboost
	audio_stop_all ()
	// audio_emitter_free (global.music_emitter)
	audio_play_sound (snd_dead, 1, 0)
	// TODO: Cam shake
	effd = instance_create (x, y, obj_par1)
	effd.image_blend = global.col1
	pd = instance_create (x, y, obj_par2)
	pd.sprite_index = sprite_index
	pd.image_speed = 0
	pd.image_index = global.cube
	pd.image_blend = global.col1
	pd.spd = 0.2
	pd.image_xscale = image_xscale
	pd.image_yscale = image_yscale
	pangle = 0
	repeat 45
	{
		pd2 = instance_create (x, y, obj_par2)
		pd2.direction = pangle
		pd2.speed = random_range (2, 16)
		pd2.image_xscale = random_range (0.2, 1)
		pd2.image_yscale = pd2.image_xscale
		pd2.image_blend = global.col2
		pangle += 8
	}
	with obj_player_deadbox
	{
		instance_destroy ()
	}
	instance_destroy ()
	instance_create (__view_get( e__VW.XView, 0 ) + 200, __view_get( e__VW.YView, 0 ) + 200, obj_restart)
}
