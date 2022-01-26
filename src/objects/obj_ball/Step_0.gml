hsp = (10.6 * global.spdboost)

if mini
	jumpspd = 10
else
	jumpspd = 12
	
scr_mini_set ()
scr_physics ()

if keyboard_check_pressed (vk_up) || mouse_check_button_pressed (mb_left)
{
	if place_meeting (x, y + gravdir, obj_wall)
	{
		gravdir *= -1
		vsp = 5
	}
}

scr_ring_set ()

scr_interactive ()
	
if place_meeting (x, y + gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite ()
	}
}

scr_hitbox (x, y)
