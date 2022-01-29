if (global.testing)
	exit

// Draw rectangle
draw_set_colour (c_black)
draw_set_alpha (0.5)
draw_rectangle (camera_get_view_x (view_camera [0]), camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 1.4),
				camera_get_view_x (view_camera [0]) + camera_get_view_width (view_camera [0]), camera_get_view_y (view_camera [0]) + camera_get_view_height (view_camera [0]), 0)
draw_set_alpha (1)
// End draw rectangle

// Draw grid
for (var i = 0; i < room_width; i+= 61)
{
	draw_line (i, 0, i, room_height)
}

for (var i = 0; i < room_height; i+= 61)
{
	draw_line (0, i, room_width, i)
}
// Finished drawing grid