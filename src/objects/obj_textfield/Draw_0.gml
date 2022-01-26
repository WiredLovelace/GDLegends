var len = string_length (val)

draw_self ()
draw_set_valign (fa_middle)
draw_set_halign (fa_left)
draw_set_color (make_color_rgb (221, 219, 223))
draw_set_font (fnt_alata_big)

display_text = val

if (!show_text)
{
	display_text = ""
	
	repeat len
	{
		display_text += "*"
	}
}

if (len > 22)
	fsize = 22 / len

draw_text_transformed (x - 235, y, string_hash_to_newline(display_text), image_xscale * fsize, image_yscale * fsize, image_angle)

if icon != -1
	draw_sprite_ext (icon, 0, x - 265, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)

if (val == "")
	draw_text_transformed (x - 235, y, string_hash_to_newline(placeholder), image_xscale * fsize, image_yscale * fsize, image_angle)