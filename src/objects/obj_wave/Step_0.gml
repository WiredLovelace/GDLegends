/// @description  Physics
hsp = (10.6 * global.spdboost)

grav = hsp / image_xscale
maxvsp = grav
scr_mini_set ()
scr_physics ()

if keyboard_check (vk_up) || mouse_check_button (mb_left)
{
	vsp = -grav * 2
}

scr_interactive ()

if place_meeting (x, y + gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite ()
	}
}

scr_hitbox (x - 6 * image_xscale, y)
