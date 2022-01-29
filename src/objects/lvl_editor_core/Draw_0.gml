/// @description Drawing

if (global.testing)
	exit

draw_sprite_ext (spr_player_a, 0, -182, room_height - 194, 1, 1, 0, c_white, 1)

draw_set_colour (c_white)
draw_set_alpha (0.5)
// draw_line (camera_get_view_x (view_camera [0]), camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.3), camera_get_view_x (view_camera [0]) + camera_get_view_width (view_camera [0]), camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.3))
draw_rectangle (camera_get_view_x (view_camera [0]), camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.3), camera_get_view_x (view_camera [0]) + camera_get_view_width (view_camera [0]), (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.3)) + 3, false)
draw_set_alpha (1)
draw_set_colour (c_black)
	
draw_sprite_ext (spr_tab_focus, 0, (camera_get_view_x (view_camera [0]) + 120 + (210 * global.selecting_type)), (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.3)) + 5, 1, 1, 0, c_white, 1)

draw_set_valign (fa_middle)
draw_set_halign (fa_middle)
draw_set_font (fnt_alata_big)

// TODO: Make this a cleaner way? (this implementation is so bad, my eyes are bleeding)
// TODO: Check clicks in these texts

if (selecting_text_width [3] == -1)
{
	selecting_text_width [0] = string_width ("Solids")
	selecting_text_height [0] = string_height ("Solids")
	
	selecting_text_width [1] = string_width ("Traps")
	selecting_text_height [1] = string_height ("Traps")
	
	selecting_text_width [2] = string_width ("Special")
	selecting_text_height [2] = string_height ("Special")
	
	selecting_text_width [3] = string_width ("Decoration")
	selecting_text_height [3] = string_height ("Decoration")
}

draw_set_colour (make_colour_rgb (190, 181, 182))
if (global.selecting_type == 0)
	draw_set_colour (make_colour_rgb (246, 225, 156))
// draw_rectangle ((camera_get_view_x (view_camera [0]) + 120) - (selecting_text_width[0] / 2), (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) - (selecting_text_height [0] / 2), (camera_get_view_x (view_camera [0]) + 120) + (selecting_text_width [0] / 2), (camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35)) + (selecting_text_height [0] / 2), false)
draw_text (camera_get_view_x (view_camera [0]) + 120, camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35), "Solids")

draw_set_colour (make_colour_rgb (190, 181, 182))
if (global.selecting_type == 1)
	draw_set_colour (make_colour_rgb (246, 225, 156))
draw_text (camera_get_view_x (view_camera [0]) + 330, camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35), "Traps")

draw_set_colour (make_colour_rgb (190, 181, 182))
if (global.selecting_type == 2)
	draw_set_colour (make_colour_rgb (246, 225, 156))
draw_text (camera_get_view_x (view_camera [0]) + 540, camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35), "Special")

draw_set_colour (make_colour_rgb (190, 181, 182))
if (global.selecting_type == 3)
	draw_set_colour (make_colour_rgb (246, 225, 156))
draw_text (camera_get_view_x (view_camera [0]) + 750, camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.35), "Decoration")