/// @description  Physics
hsp = (10.6 * global.spdboost)

scr_mini_set ()
sb = 1

if mini
{
	sb = 1.5
	grav = 0.7
}
else
{
	sb = 1
	grav = 0.6
}

jumpspd = 12 * ((image_xscale + 0.2) * sb)
fspd = (grav * 2.2)
scr_physics ()

if (keyboard_check (vk_up) || mouse_check_button (mb_left)) && vsp > -maxfvsp
{
	vsp -= fspd
}

if vsp > maxfvsp
{
	vsp = maxfvsp
}

if distance_to_object (instance_nearest (x, y, obj_ring_par)) < 61
{
	scr_ring_set ()
}
/// Interactive
scr_interactive ()

if place_meeting (x, y + gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite ()
	}
}

scr_hitbox (x, y - (8 * gravdir) * image_xscale)
