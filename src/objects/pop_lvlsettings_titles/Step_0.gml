/// @description If the popup is closed, we'll just delete ourselves

if popup == -1 || !instance_exists (popup) || popup.closing
	instance_destroy ()
	
image_alpha = popup.image_xscale / popup.target_xscale

if mouse_check_button_pressed (mb_left) &&
	mouse_x > ((popup.x - (popup.sprite_width / 2)) + 70) &&
	mouse_y > popup.y + 280 &&
	mouse_x < ((popup.x - (popup.sprite_width / 2)) + 150) &&
	mouse_y < popup.y + 360 &&
	((global.negrito * -1) > depth)
{
	colour_wheel (global.initial_bgcolor, "BG", (depth - 1) * -1, -1)
}

if mouse_check_button_pressed (mb_left) &&
	mouse_x > ((popup.x - (popup.sprite_width / 2)) + 270) &&
	mouse_y > popup.y + 280 &&
	mouse_x < ((popup.x - (popup.sprite_width / 2)) + 350) &&
	mouse_y < popup.y + 360 &&
	((global.negrito * -1) > depth)
{
	colour_wheel (global.initial_gcolor, "Ground", (depth - 1) * -1, -2)
}

if mouse_check_button_pressed (mb_left) &&
	mouse_x > ((popup.x - (popup.sprite_width / 2)) + 470) &&
	mouse_y > popup.y + 280 &&
	mouse_x < ((popup.x - (popup.sprite_width / 2)) + 550) &&
	mouse_y < popup.y + 360 &&
	((global.negrito * -1) > depth)
{
}

if mouse_check_button_pressed (mb_left) &&
	mouse_x > ((popup.x - (popup.sprite_width / 2)) + 670) &&
	mouse_y > popup.y + 280 &&
	mouse_x < ((popup.x - (popup.sprite_width / 2)) + 750) &&
	mouse_y < popup.y + 360 &&
	((global.negrito * -1) > depth)
{
}