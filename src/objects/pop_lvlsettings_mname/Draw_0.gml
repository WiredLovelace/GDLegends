/// @description Draw music name

if popup == -1
	exit

draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_set_font (fnt_alata_big)
draw_set_colour (c_white)
draw_text (popup.x, popup.y - 200, audio_get_name (global.music))