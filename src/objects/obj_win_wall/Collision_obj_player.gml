to_level = (room - rm_stereo_madness) + 2 // We add two, because, if I complete stereo madness, for example, global.current_level must be two, if I complete back on track, it must be three, and so on

if (global.current_level < to_level)
{
	global.player_stars += global.give_stars
	global.current_level = to_level // If we haven't beaten this level already
	
	global.player_exp += global.give_stars * 10
}

audio_stop_all ()
// TODO: Play win sound
room_goto (rm_dungeons)
