draw_self ()

if (!draw_title)
	exit
	
draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_set_font (title_font)
draw_set_color (title_color)
draw_text_transformed (x + title_xoffset, y + title_yoffset, string_hash_to_newline(title_text), image_xscale / scale_start, image_yscale, image_alpha)
