/// @description Editor logic

// Switch testing
if (keyboard_check_pressed (vk_enter))
{
	global.testing = !global.testing
	
	if (global.testing)
	{
		instance_create_layer (-182, room_height - 194, "LevelInstances", obj_player)
		
		global.gcolor = global.initial_gcolor
		global.bgcolor = global.initial_bgcolor
		
		with (lvl_editor_objsel)
		{
			visible = false
		}
		
		if (global.selected_obj != noone)
		{
			with (global.selected_obj)
			{
				// TODO: global.col
				image_blend = c_white
			}
		}
		
		audio_play_sound_on (global.music_emitter, global.music, 1, 0)
	}
	else
	{
		// TODO: Remove this else
		audio_stop_all ()
		
		if (instance_exists (obj_restart))
		{
			instance_destroy (obj_restart)
		}
		
		if (global.selected_obj != noone)
		{
			with (global.selected_obj)
			{
				image_blend = c_aqua
			}
		}
		
		global.gcolor = c_white
		global.bgcolor = c_white
		
		with (lvl_editor_objsel)
		{
			visible = true
		}
		
		instance_destroy (obj_player)
	}
}

// Apply transformations to the selected object
scr_transform_selectedobj ()

// Camera pan
if (mouse_check_button_pressed (mb_middle) && !global.testing)
{
	drag_x = mouse_x
	drag_y = mouse_y
}

if (mouse_check_button (mb_middle) && !global.testing)
{
	camera_set_view_pos (view_camera [0],
		drag_x - (mouse_x - camera_get_view_x (view_camera [0])),
		drag_y - (mouse_y - camera_get_view_y (view_camera [0])))
}