/// @description Draw
draw_sprite_ext (spr_play_modes_fill_blue, 0, x, y - 4, (sprite_width / sprite_get_width (spr_play_modes_fill_blue)) - 0.5, (sprite_height / sprite_get_height (spr_play_modes_fill_blue)) - 0.1, image_angle, image_blend, image_alpha)

draw_sprite_ext (mode_icon, 0, x, (y - (sprite_get_height (mode_icon) / 2)) + yoffset, mode_scale * (image_xscale / scale_start), mode_scale * (image_yscale / yscale), image_angle, image_blend, image_alpha)
draw_sprite_ext (spr_fill_info_bg, 0, x, (y + (sprite_height / 3)) - 15, (sprite_width / sprite_get_width (spr_fill_info_bg)), ((sprite_height / sprite_get_height (spr_fill_info_bg)) / 3), image_angle, image_blend, 0.7)

draw_set_valign (fa_center)
draw_set_halign (fa_left)
draw_set_font (fnt_alata_big)
draw_text_transformed (x - (sprite_width / 2.3), (y + (sprite_height / 5)), mode_name, image_xscale / scale_start, image_yscale / yscale, image_angle)

draw_set_font (fnt_alata_mini)
draw_set_valign (fa_top)
draw_text_transformed (x - (sprite_width / 2.3), (y + (sprite_height / 4)), string_hash_to_newline (mode_desc), image_xscale / scale_start, image_yscale / yscale, image_angle)

draw_self ()