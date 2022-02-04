/// @description Create level

popup = instance_create_layer (camera_get_view_x (view_camera [0]) + (camera_get_view_width (view_camera [0]) / 2),
							   camera_get_view_y (view_camera [0]) + (camera_get_view_height (view_camera [0]) / 2),
							   "Popups", obj_title_popup)
popup.title = "Level Create"
popup.target_xscale = 3.5
popup.target_yscale = 1.5

name_text = instance_create_depth (popup.x, popup.y, popup.depth, obj_textfield)
name_text.placeholder = "Level Name"
name_text.pop_parent = popup

create_btn = instance_create_depth (popup.x, popup.y + 130, popup.depth, pre_lvl_editor_createbtn)
create_btn.pop_parent = popup
create_btn.name_text = name_text
create_btn.image_xscale = 3
create_btn.scale_start = 3