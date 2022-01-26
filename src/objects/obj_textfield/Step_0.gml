if pop_parent != -1
{
	if (!instance_exists (pop_parent))
	{
		instance_destroy ()
		exit;
	}
	
	image_xscale = pop_parent.image_xscale / pop_parent.target_xscale
	image_yscale = pop_parent.image_yscale / pop_parent.target_yscale
}

if typing
{
	val += keyboard_string
	keyboard_string = ""
}

if keyboard_check (vk_backspace) && typing && !deleting
{
	deleting = 1
	val = string_delete (val, string_length (val), 1)
	
	alarm[0] = 5 // Set deleting to 0 in 5 steps
}