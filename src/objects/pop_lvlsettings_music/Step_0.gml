/// @description Update

if (!instance_exists (pop_parent))
{
	instance_destroy ()
	exit;
}

image_alpha = pop_parent.image_xscale / pop_parent.target_xscale