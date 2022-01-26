/// @description  Physics
scr_mini_set ()

hsp = (10.6 * global.spdboost)

sb = 1

if mini
{
	sb = 1.5
	grav = 0.8
}
else
{
	sb = 1
	grav = 0.6
}

jumpspd = 10 * ((image_xscale + 0.2) * sb)
scr_physics ()
if keyboard_check_pressed (vk_up) || mouse_check_button_pressed (mb_left)
{
	vsp = -jumpspd
}

if distance_to_object (instance_nearest (x, y, obj_ring_par)) < 61
{
	scr_ring_set ()
}

scr_interactive ()

if place_meeting (x, y + gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite ()
	}
}

scr_hitbox (x, y + 15)
