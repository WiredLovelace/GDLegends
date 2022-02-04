/// @description Draw empty text

if global.levels [0] != 0
	exit
	
draw_set_colour (c_white)
draw_set_font (fnt_alata_big)
draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_text (camera_get_view_width (view_camera [0]) / 2,
		   camera_get_view_height (view_camera [0]) / 2,
		   "You have no levels yet... What are you waiting for to create one?")