draw_self ()

if global.current_level > (lvl_no * (global.dungeons_page + 1))
	image_index = 1 // We already completed the level
else if global.current_level == (lvl_no * (global.dungeons_page + 1))
	image_index = 2 // This is the current level
else if global.current_level < (lvl_no * (global.dungeons_page + 1))
{
	image_index = 3 // This level is locked
	draw_sprite_ext (spr_lock, 0, x, y, image_xscale, image_yscale, image_alpha, image_blend, image_alpha)
	exit
}

draw_set_color (c_white)
draw_set_font (fnt_alata_big)
draw_set_valign (fa_middle)
draw_set_halign (fa_middle)
draw_text_transformed (x, y, string_hash_to_newline(lvl_no), image_xscale, image_yscale, 0)
