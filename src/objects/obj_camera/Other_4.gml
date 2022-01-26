global.bgcolor = global.initial_bgcolor
global.gcolor = merge_color (global.initial_gcolor, c_black, 0.3)

global.music_emitter = audio_emitter_create ()
audio_play_sound_on (global.music_emitter, global.music, 0, 1)

alarm[0] = room_speed * 2
