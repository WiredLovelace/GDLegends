/// @description Perform the sign up

// TODO: Check if any textfield is empty (""?), if so, show an error popup

if (second)
{	
	signup_req = http_post_string (global.server_url + "/accounts/account_create.php",
		"submit=legends&email=" + email_text.val +
		"&username=" + username_text.val +
		"&password=" + password_text.val)
	exit;
}

popup = instance_create (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2), obj_title_popup)
popup.title = "Sign-Up"
popup.target_xscale = 3.5
popup.target_yscale = 3

email_text = instance_create_depth (popup.x, popup.y - 150, popup.depth - 1, obj_textfield)
email_text.placeholder = "Email"
email_text.icon = spr_icon_mail
email_text.pop_parent = popup

username_text = instance_create_depth (popup.x, popup.y, popup.depth - 1, obj_textfield)
username_text.placeholder = "Username"
username_text.icon = spr_icon_user
username_text.pop_parent = popup

password_text = instance_create_depth (popup.x, popup.y + 150, popup.depth - 1, obj_textfield)
password_text.placeholder = "Password"
password_text.icon = spr_icon_lock
password_text.pop_parent = popup
password_text.show_text = false

register_btn = instance_create_depth (popup.x, popup.y + 300, popup.depth - 1, popup_login_signup_btn)
register_btn.image_xscale = 3
register_btn.scale_start = 3
register_btn.yscale = 0.85
register_btn.second = true
register_btn.email_text = email_text
register_btn.username_text = username_text
register_btn.password_text = password_text
register_btn.pop_parent = popup