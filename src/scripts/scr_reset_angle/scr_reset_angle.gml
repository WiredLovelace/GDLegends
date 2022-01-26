function scr_reset_angle(argument0) {
	if angle > argument0
	{
		angle -= 12
		if angle < argument0
			angle = argument0
	}
	else if angle < argument0
	{
		angle += 12
		if angle > argument0
			angle = argument0
	}



}
