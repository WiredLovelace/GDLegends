toangle = (22.5 + (22.5 / image_xscale)) * sign (-vsp)
angle += (toangle - angle) * 0.3
scr_trail (1, 6, 0)
draw_sprite_ext(spr_wave_a,1,x,y,image_xscale,image_yscale,angle*gravdir+angleplus,global.col1,image_alpha)
draw_sprite_ext(spr_wave_b,1,x,y,image_xscale,image_yscale,angle*gravdir+angleplus,global.col2,image_alpha)
