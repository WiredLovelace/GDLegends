function pop_text(text, btn_label, xscale, yscale, negrito_add){
	ins = instance_create_depth (camera_get_view_width (view_camera [0]) / 2, camera_get_view_height (view_camera [0]) / 2, object_get_depth (obj_text_popup), obj_text_popup)
	ins.text = text
	ins.btn_label = btn_label
	ins.target_xscale = xscale
	ins.target_yscale = yscale
	ins.negrito_add = negrito_add
}