/// @description Follow
x = camera_get_view_x (view_camera [0]) + xstart
y = camera_get_view_y (view_camera [0]) + ystart

if popup != -1 && popup.closing
{
	with (lvl_editor_core)
	{
		hide = 0
		can_pan = 1
	}
	
	popup = -1
}

if global.testing && popup != -1
{
	with (popup)
		closing = 1
		
	popup = -1
	
	with (lvl_editor_core)
	{
		hide = 0
		can_pan = 1
	}
}