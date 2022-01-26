/// @description Draw EXP text and bar
draw_sprite_ext (spr_progress_content, 0, x - 203, y - ((sprite_height / 2) - 5), ((sprite_width / 4) * (global.player_exp / (global.player_level * 100))) + 1, 1, image_angle, image_blend, image_alpha)
draw_self ()

draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_set_color (c_white)
draw_set_font (fnt_alata_mini)
draw_text (x, y, string (global.player_exp) + "/" + string(global.player_level * 100))

draw_set_halign (fa_left)
draw_set_font (fnt_alata_big)
draw_text ((x - sprite_width / 2) + 45, (y - (sprite_height / 2)) - 20, global.player_name)