/// @description  Physics
//hsp = 10.6 * global.spdboost
hsp = (10.6 * global.spdboost)
scr_mini_set ()
scr_jboost_set ()
jumpspd = 20 * scr_jboost ()
scr_ring_set ()
scr_physics ()
if keyboard_check (vk_up) || mouse_check_button (mb_left)
{
	if place_meeting (x, y + gravdir, obj_wall)
		vsp = -jumpspd
}
global.ylimit = y

scr_interactive ()
	
if place_meeting (x, y + gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite ()
	}
}

scr_hitbox (x, y)
