function scr_hitbox(argument0, argument1) {
	ddb.x = argument0
	ddb.y = argument1
	ddb.image_xscale = image_xscale
	ddb.image_yscale = image_yscale

	with ddb
	{
		if place_meeting (x, y, obj_wall) || place_meeting (x, y, obj_spike1)
		{
			with obj_player
			{
				scr_crush ()
			}
		}
	}
}
