/// @description  Interactive
function scr_interactive() {
	// Pads
	if place_meeting (x, y, obj_pad1)
	{
		vsp = -jumpspd * 1.5
		trail = 1
	}

	if place_meeting (x, y, obj_pad2)
	{
		vsp = -jumpspd + 2
		trail = 1
	}

	if place_meeting (x, y, obj_pad3)
	{
		gravdir *= -1
		vsp = 20
		trail = 1
	}

	if place_meeting (x, y, obj_pad4)
	{
		vsp = -jumpspd - 16
		trail = 1
	}

	// Rings
	if place_meeting (x, y, obj_ring1) && canring
	{
		vsp = -jumpspd
		canring = 0
		trail = 1
	}

	if place_meeting (x, y, obj_ring2) && canring
	{
		vsp = -jumpspd + 2
		canring = 0
		trail = 1
	}

	if place_meeting (x, y, obj_ring3) && canring
	{
		gravdir *= -1
		canring = 0
		vsp = 20
		trail = 1
	}

	if place_meeting (x, y, obj_ring4) && canring
	{
		gravdir *= -1
		canring = 0
		vsp = -jumpspd
		trail = 1
	}

	if place_meeting (x, y, obj_ring5) && canring
	{
		vsp = jumpspd
		canring = 0
		trail = 1
	}

	// Speeds
	if place_meeting (x, y, obj_speed0) && global.spdboost != 0.75
	{
		global.spdboost = 0.75
	}

	if place_meeting (x, y, obj_speed1) && global.spdboost != 1
	{
		global.spdboost = 1
	}

	if place_meeting (x, y, obj_speed2) && global.spdboost != 1.25
	{
		global.spdboost = 1.25
	}

	if place_meeting (x, y, obj_speed3) && global.spdboost != 1.5
	{
		global.spdboost = 1.5
	}

	// Portals
	if place_meeting (x, y, obj_nomini_portal) && mini
	{
		mini = 0
	}

	if place_meeting (x, y, obj_mini_portal) && !mini
	{
		mini = 1
	}

	if place_meeting (x, y, obj_portal_normal_grav) && gravdir != 1
	{
		if gravdir == -1
		{
			vsp *= -0.5
		}
	
		gravdir = 1
		trail = 1
	} 

	if place_meeting (x, y, obj_portal_invert_grav) && gravdir != -1
	{
		if gravdir == 1
		{
			vsp *= -0.5
		}
	
		gravdir = -1
		trail = 1
	}

	if place_meeting (x, y, obj_cube_portal)
	{
		scr_transform (obj_player)
	}

	if place_meeting (x, y, obj_ship_portal)
	{
		scr_transform (obj_ship)
	}

	if place_meeting (x, y, obj_ball_portal)
	{
		scr_transform (obj_ball)
	}

	if place_meeting (x, y, obj_ufo_portal)
	{
		scr_transform (obj_ufo)
	}

	if place_meeting (x, y, obj_wave_portal)
	{
		scr_transform (obj_wave)
	}
}
