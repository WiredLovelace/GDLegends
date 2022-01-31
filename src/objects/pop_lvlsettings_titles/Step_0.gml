/// @description If the popup is closed, we'll just delete ourselves

if popup == -1 || !instance_exists (popup) || popup.closing
	instance_destroy ()
	
image_alpha = popup.image_xscale / popup.target_xscale