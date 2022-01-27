if (mouse_check_button_pressed (mb_left) && global.negrito == 0)
{
	// TODO: Show a loading anim?
	load_req = http_post_string (global.server_url + "/accounts/account_get_data.php", "sid=" + global.session_id)
}