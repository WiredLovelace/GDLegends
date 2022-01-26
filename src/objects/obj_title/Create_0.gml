pulse = 0
dir = 1 // for the colors

if (file_exists("sessid"))
{
	var file = file_text_open_read ("sessid")
	global.session_id = file_text_read_string(file)
	file_text_close (file)
}

load_req = -1

// We will only check if the player is logged in, the other logic part, is on HTTP
loggedin_req = http_post_string (global.server_url + "/accounts/account_loggedin.php", "sid=" + global.session_id)