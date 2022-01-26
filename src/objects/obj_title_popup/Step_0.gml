if (image_xscale < target_xscale && !closing)
{
	image_xscale += 0.1 * target_xscale
}

if (image_yscale < target_yscale && !closing)
{
	image_yscale += 0.1 * target_yscale
}

if (closing)
{
	image_xscale -= 0.1 * target_xscale
	image_yscale -= 0.1 * target_yscale
	
	if (image_xscale <= 0)
		instance_destroy ()
}

if mouse_check_button_released (mb_left) && closeable && 
	((mouse_x > ((x + (sprite_width / 2)) - 128) && mouse_x < (x + (sprite_width / 2)) - 24)
	  && ((mouse_y > (y - (sprite_height / 2)) + 20) && mouse_y < (y - (sprite_height / 2)) + 115))
	&& ((global.negrito * -1) > depth)
{
	// if we click the "X", basically
	closing = 1
}