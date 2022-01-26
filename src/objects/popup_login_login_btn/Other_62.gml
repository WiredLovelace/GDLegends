/// @description Handle log-in requests/responses

var response = ""

if (ds_map_find_value (async_load, "id"))  == login_req
{
	if (ds_map_find_value (async_load, "status")) == 0
	{
		response = ds_map_find_value (async_load, "result")
		
		if (string_char_at(response, 0) != "#")
		{
			pop_text (response, "Ok", 4, 1, 2)
			exit;
		}
		
		global.loggedin = 1
		global.player_name = uname_text.val
		
		global.session_id = string_copy (response, 2, string_length (response) - 1)
		scr_update_session ()
		
		pop_text ("Log-In successful!", "Ok", 4, 1, 2);
		
		pop_parent.closing = 1
	}
}