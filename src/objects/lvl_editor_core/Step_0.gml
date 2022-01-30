/// @description Editor logic

// Hide UI
if hide//  && layer_get_visible (lid) // if the layer is visible
{
	layer_set_visible (lid, 0)
		
	instance_deactivate_object (lvl_editor_objsel)
		
	rect.visible = 0
} else if !hide && !layer_get_visible (lid)
{
	layer_set_visible (lid, 1)
	
	instance_activate_object (lvl_editor_objsel)
	
	rect.visible = 1
}

// Switch testing
if (keyboard_check_pressed (vk_enter))
{
	global.testing = !global.testing
	
	if (global.testing)
	{
		instance_create_layer (-182, room_height - 194, "LevelInstances", obj_player)
		
		global.gcolor = global.initial_gcolor
		global.bgcolor = global.initial_bgcolor
		
		instance_deactivate_object (lvl_editor_objsel)
		
		if (global.selected_obj != noone)
		{
			with (global.selected_obj)
			{
				// TODO: global.col
				image_blend = c_white
			}
		}
		
		camera_set_view_size (view_camera [0], 1280, 720)
		
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
		
		global.spdboost = 1
		global.yscroll =1 
		global.g2y = 0
		global.g1y = room_height - 164
		
		global.gcolor = c_white
		global.bgcolor = c_white
		
		instance_activate_object (lvl_editor_objsel)
		
		camera_set_view_size (view_camera [0], 1920, 1080)
		
		instance_destroy (obj_player)
	}
}

// Apply transformations to the selected object
scr_transform_selectedobj ()

// Change the selected type
if (mouse_check_button_released (mb_left) && !global.testing && ((global.negrito * -1) > depth) &&
	mouse_x > (camera_get_view_x (view_camera [0]) + 120) - (selecting_text_width[0] / 2) &&
	mouse_y > (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) - (selecting_text_height [0] / 2) &&
	mouse_x < (camera_get_view_x (view_camera [0]) + 120) + (selecting_text_width [0] / 2) &&
	mouse_y < (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) + (selecting_text_height [0] / 2))
{
	global.selecting_page = 0
	with (lvl_editor_objsel) tosel_id = -1
	global.selecting_type = 0
}

if (mouse_check_button_released (mb_left) && !global.testing && ((global.negrito * -1) > depth) &&
	mouse_x > (camera_get_view_x (view_camera [0]) + 320) - (selecting_text_width[0] / 2) &&
	mouse_y > (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) - (selecting_text_height [0] / 2) &&
	mouse_x < (camera_get_view_x (view_camera [0]) + 320) + (selecting_text_width [0] / 2) &&
	mouse_y < (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) + (selecting_text_height [0] / 2))
{
	global.selecting_page = 0
	with (lvl_editor_objsel) tosel_id = -1
	global.selecting_type = 1
}

if (mouse_check_button_released (mb_left) && !global.testing && ((global.negrito * -1) > depth) &&
	mouse_x > (camera_get_view_x (view_camera [0]) + 520) - (selecting_text_width[0] / 2) &&
	mouse_y > (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) - (selecting_text_height [0] / 2) &&
	mouse_x < (camera_get_view_x (view_camera [0]) + 520) + (selecting_text_width [0] / 2) &&
	mouse_y < (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) + (selecting_text_height [0] / 2))
{
	global.selecting_page = 0
	with (lvl_editor_objsel) tosel_id = -1
	global.selecting_type = 2
}

if (mouse_check_button_released (mb_left) && !global.testing && ((global.negrito * -1) > depth) &&
	mouse_x > (camera_get_view_x (view_camera [0]) + 750) - (selecting_text_width[0] / 2) &&
	mouse_y > (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) - (selecting_text_height [0] / 2) &&
	mouse_x < (camera_get_view_x (view_camera [0]) + 750) + (selecting_text_width [0] / 2) &&
	mouse_y < (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) + (selecting_text_height [0] / 2))
{
	global.selecting_page = 0
	with (lvl_editor_objsel) tosel_id = -1
	global.selecting_type = 3
}

// Camera pan
if (mouse_check_button_pressed (mb_middle) && !global.testing && can_pan)
{
	drag_x = mouse_x
	drag_y = mouse_y
}

if (mouse_check_button (mb_middle) && !global.testing && can_pan)
{
	camera_set_view_pos (view_camera [0],
		drag_x - (mouse_x - camera_get_view_x (view_camera [0])),
		drag_y - (mouse_y - camera_get_view_y (view_camera [0])))
}