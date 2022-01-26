/// @description  Draw
toangle = -vsp * 3
angle += (toangle - angle) * 0.3
image_yscale = image_xscale * gravdir
cscale = image_xscale * 0.7
sprite_set_offset (spr_player_a, 30, 64)
sprite_set_offset (spr_player_b, 30, 64)

scr_trail (1, 0, 6)

draw_sprite_ext(spr_player_b,global.cube,x,y,cscale,cscale*gravdir,angle*gravdir+angleplus,global.col2,image_alpha)
draw_sprite_ext(spr_player_a,global.cube,x,y,cscale,cscale*gravdir,angle*gravdir+angleplus,global.col1,image_alpha)
draw_sprite_ext(spr_ship_a,1,x,y,image_xscale,image_yscale,angle*gravdir+angleplus,global.col1,image_alpha)
draw_sprite_ext(spr_ship_b,1,x,y,image_xscale,image_yscale,angle*gravdir+angleplus,global.col2,image_alpha)
