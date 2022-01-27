/// @description Draw stars
draw_self ()

draw_set_halign (fa_left)
draw_set_valign (fa_center)
draw_set_font (fnt_alata_big)
draw_text (x + (sprite_width / 1.5), y, string (global.player_stars))