/// @description Login popup

popup = instance_create (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2), obj_title_popup)
popup.title = "Log-In"
popup.target_xscale = 3.5
popup.target_yscale = 3
popup.closeable = false

username_text = instance_create_depth (popup.x, popup.y - 150, popup.depth, obj_textfield)
username_text.placeholder = "Username"
username_text.icon = spr_icon_user
username_text.pop_parent = popup

password_text = instance_create_depth (popup.x, popup.y, popup.depth, obj_textfield)
password_text.placeholder = "Password"
password_text.icon = spr_icon_lock
password_text.pop_parent = popup
password_text.show_text = false

login_btn = instance_create_depth (popup.x, popup.y + 150, popup.depth, popup_login_login_btn)
login_btn.image_xscale = 3
login_btn.scale_start = 3
login_btn.yscale = 0.85
login_btn.pop_parent = popup
login_btn.uname_text = username_text
login_btn.password_text = password_text

signup_btn = instance_create_depth (popup.x, popup.y + 250, popup.depth, popup_login_signup_btn)
signup_btn.image_xscale = 3
signup_btn.scale_start = 3
signup_btn.yscale = 0.85
signup_btn.pop_parent = popup