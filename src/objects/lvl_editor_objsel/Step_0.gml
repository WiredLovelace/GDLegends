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
	
	alarm[0] = 1
}

if objsel_id == undefined
	exit
	
image_index = 0
	
if global.place_obj == tosel
	image_index = 2
	
if (tosel_id == -1)
	tosel_id = objsel_id + (20 * global.selecting_page)

if global.selecting_type == 0
{	
	if (tosel_id > array_length (global.solidt) - 1)
	{
		tosel = -1
		exit
	}
	
	tosel = global.solidt [tosel_id]
} else if global.selecting_type == 1
{
	if (tosel_id > array_length (global.trapst) - 1)
	{
		tosel = -1
		exit
	}
	
	tosel = global.trapst [tosel_id]
} else if global.selecting_type == 2
{
	if (tosel_id > array_length (global.specit) - 1)
	{
		tosel = -1
		exit
	}
	
	tosel = global.specit [tosel_id]
}