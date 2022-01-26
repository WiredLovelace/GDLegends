/// @description Draw text

draw_self ()

draw_set_font (fnt_alata_big)
draw_set_color (make_color_rgb (238, 207, 132))
draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_text (x, (y - (sprite_height / 4)) + 32, string_hash_to_newline(text))
