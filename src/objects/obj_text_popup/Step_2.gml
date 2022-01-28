/// @description Be at the center of the screen
x = camera_get_view_x (view_camera [0]) + (camera_get_view_width (view_camera [0]) / 2)
y = camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 2)

if (instance_exists (close_btn) && close_btn != -1)
{
	close_btn.y = (y + (sprite_height / 2)) - 75
	close_btn.x = x
}