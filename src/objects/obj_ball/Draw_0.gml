angle -= hsp * gravdir
scr_trail (0, 0, 0)
draw_sprite_ext (sprite_index, 0, x, y, image_xscale, image_yscale, angle, global.col1, image_alpha)
draw_sprite_ext (spr_ball_b, 0, x, y, image_xscale, image_yscale, angle, global.col2, image_alpha)
