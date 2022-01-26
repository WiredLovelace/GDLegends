draw_self ()

draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_set_font (fnt_alata_big)
draw_set_color (merge_color (c_white, c_gray, pulse))
draw_text (960, 981, string_hash_to_newline("Touch anywhere on the screen to play"))

pulse += 0.01 * dir

if (pulse >= 1)
	dir = -1
else if (pulse <= 0)
	dir = 1
