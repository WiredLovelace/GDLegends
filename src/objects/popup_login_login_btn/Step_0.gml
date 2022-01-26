/// @description  Animation

if frame == 0
{
	if image_xscale > scale_start
	{
		image_xscale -= .02
	}
}

if frame == 1
{
	if image_xscale < (scale_start + 0.18)
		image_xscale += .02
	else
		frame = 2
}

if frame == 2
{
	if image_xscale > (scale_start + 0.11)
		image_xscale -= .02
	else
		frame = 3
}

if frame == 3
{
	if image_xscale < (scale_start + 0.15)
		image_xscale += .02
}

if frame == 4
{
	if image_xscale < (scale_start + 0.18)
		image_xscale += .02
	else
		frame = 0
}

image_yscale = (image_xscale / scale_start) * yscale

if (mouse_check_button_released (mb_left) && position_meeting (mouse_x, mouse_y, id) && ((global.negrito * -1) > depth))
{
	frame = 4
	now = 1
	
	alarm[0] = 20
}

if (!instance_exists (pop_parent))
{
	instance_destroy ()
	exit;
}

image_alpha = pop_parent.image_xscale / pop_parent.target_xscale