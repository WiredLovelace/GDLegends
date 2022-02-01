// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function colour_wheel(initial_col, title, negrito_add, attached_col_id){
	// attached_col_id:
	// -2: global.initial_gcolor
	// -1: global.initial_bgcolor
	// 0-999: global.col [0-999]
	
	var pop = instance_create_layer (camera_get_view_x (view_camera [0]) + camera_get_view_width (view_camera [0]) / 2,
									 camera_get_view_y (view_camera [0]) + camera_get_view_height (view_camera [0]) / 2,
									 "Popups", obj_title_popup)
	pop.title = title
	pop.target_xscale = 2.5
	pop.target_yscale = 2
	pop.closeable = true
	pop.negrito_add = negrito_add
	
	var wheel = instance_create_layer (pop.x, pop.y + 50, "Popups", obj_colour_wheel)
	wheel.pop_parent = pop
	wheel.initial_colour = initial_col
	wheel.attached_colour = attached_col_id
}