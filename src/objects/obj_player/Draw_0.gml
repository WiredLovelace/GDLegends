if !place_meeting (x, y + gravdir * 2, obj_wall)
{
	angle -= 6
}
	
if angle < -450
	angle = -90
	
if place_meeting (x, y + gravdir * 2, obj_wall)
{
	if angle > -450 && angle <-270
		scr_reset_angle (-360)
	else if angle > -360 && angle < -180
		scr_reset_angle (-270)
	else if angle > -270 && angle < -90
		scr_reset_angle (-180)
	else if angle > -180 && angle < 0
		scr_reset_angle (-90)
}

if angle <= -360
	angle = 0
	
scr_trail (0, 0, 0)

draw_sprite_ext (spr_player_b, image_index, x, y, image_xscale, image_yscale, (angle * gravdir) + angleplus, global.col2, image_alpha)
draw_sprite_ext (sprite_index, image_index, x, y, image_xscale, image_yscale, (angle * gravdir) + angleplus, global.col1, image_alpha)
