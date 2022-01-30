/// @description Create settings popup
with (lvl_editor_core)
{
	hide = 1
	can_pan = 0
}

popup = instance_create_layer (camera_get_view_x (view_camera [0]) + camera_get_view_width (view_camera [0]) / 2,
							   camera_get_view_y (view_camera [0]) + camera_get_view_height (view_camera [0]) / 2,
							   "Popups",
							   obj_title_popup)
popup.title = "Level Settings"
popup.target_xscale = 3.5
popup.target_yscale = 3
popup.closeable = true

music_next = instance_create_layer (popup.x + 330, popup.y - 200,
									"Popups", pop_lvlsettings_music)
music_next.depth = popup.depth - 1
music_next.pop_parent = popup

music_prev = instance_create_layer (popup.x - 330, popup.y - 200,
									"Popups", pop_lvlsettings_music)
music_prev.depth = popup.depth - 1
music_prev.image_xscale = -1
music_prev.pop_parent = popup

music_name = instance_create_layer (0, 0, "Popups", pop_lvlsettings_mname)
music_name.depth = popup.depth - 1
music_name.popup = popup