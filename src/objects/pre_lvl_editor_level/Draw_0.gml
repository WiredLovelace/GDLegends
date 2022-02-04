/// @description Draw self
if level == -1 || global.levels [0] == 0 || (level + (4 * global.pre_lvl_editor_page)) > array_length (global.levels) - 1
{
	exit
}

var final_lev = level + (4 * global.pre_lvl_editor_page)
var name = scr_get_level_name (global.levels [final_lev])

if name == ""
	exit

draw_self ()

draw_set_colour (c_white)
draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_set_font (fnt_alata_big)
draw_text_transformed (x, y, name, image_xscale / scale_start, image_yscale / yscale, image_angle)