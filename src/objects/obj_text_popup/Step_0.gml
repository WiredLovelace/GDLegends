/// @description Popup logic

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