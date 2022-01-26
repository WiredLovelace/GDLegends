function scr_trail(always_active, xoffset, yoffset) {
	if always_active && !trail
		trail = 1
	
	if trail || trail_alpha > 0
		draw_trail (16, xoffset, yoffset, 12, global.col2, -1, 0, trail_alpha)
	
	if (!trail && trail_alpha <= 0)
		array_trail = 0 // We delete all the entries in `array_trail' to fix a weird bug

	if (place_meeting (x, y + gravdir * 2, obj_wall) && ! always_active)
	{
		// TODO: Remove this else
		if (trail_alpha > 0)
			trail_alpha -= 0.09
	}
	else
	{
		if (trail && trail_alpha < 0.7)
			trail_alpha += 0.03
	}
}