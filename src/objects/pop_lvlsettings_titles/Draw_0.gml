/// @description Draw texts

draw_set_valign (fa_center)
draw_set_halign (fa_center)
draw_set_font (fnt_alata_big)
draw_set_colour (c_white)
draw_text (popup.x, popup.y - 200, audio_get_name (global.music))

draw_text (popup.x, popup.y - 100, "Design")
draw_text ((popup.x - (popup.sprite_width / 3)) + 20, popup.y - 50, "BG")
draw_text ((popup.x + (popup.sprite_width / 3)) - 40, popup.y - 50, "Ground")

draw_sprite_ext (spr_bg1, 0, (popup.x - (popup.sprite_width / 3)) - 60, popup.y - 10, 0.15, 0.15, 0, c_white, image_alpha)
draw_sprite_ext (spr_ground, 0, (popup.x + (popup.sprite_width / 3)) - 115, popup.y - 10, 0.6, 0.6, 0, c_white, image_alpha)

draw_set_halign (fa_left)
draw_text ((popup.x - (popup.sprite_width / 2)) + 40, popup.y + 200, "Colours")

draw_set_halign (fa_center)
draw_text ((popup.x - (popup.sprite_width / 2)) + 110, popup.y + 250, "BG")
draw_text ((popup.x - (popup.sprite_width / 2)) + 310, popup.y + 250, "Ground")
draw_text ((popup.x - (popup.sprite_width / 2)) + 510, popup.y + 250, "Col1")
draw_text ((popup.x - (popup.sprite_width / 2)) + 710, popup.y + 250, "Col2")

draw_set_colour (global.initial_bgcolor)
draw_rectangle ((popup.x - (popup.sprite_width / 2)) + 70, popup.y + 280, (popup.x - (popup.sprite_width / 2)) + 150, popup.y + 360, false)

draw_set_colour (global.initial_gcolor)
draw_rectangle ((popup.x - (popup.sprite_width / 2)) + 270, popup.y + 280, (popup.x - (popup.sprite_width / 2)) + 350, popup.y + 360, false)

draw_set_colour (c_white)
draw_rectangle ((popup.x - (popup.sprite_width / 2)) + 470, popup.y + 280, (popup.x - (popup.sprite_width / 2)) + 550, popup.y + 360, false)
draw_rectangle ((popup.x - (popup.sprite_width / 2)) + 670, popup.y + 280, (popup.x - (popup.sprite_width / 2)) + 750, popup.y + 360, false)