draw_self ()

draw_set_color (c_white)
draw_set_font (fnt_alata_big)
draw_set_valign (fa_middle)
draw_set_halign (fa_middle)
draw_text (x, y, string_hash_to_newline(global.player_level)) // TODO: Should this draw other levels?
