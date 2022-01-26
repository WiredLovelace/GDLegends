/// @description The register request
// TODO: When finished, create a message popup saying "Success" or something, close the popups and continue loading the information

var response = ""

if ds_map_find_value (async_load, "id") == signup_req
{
	if (ds_map_find_value (async_load, "status")) == 0
	{
		response = ds_map_find_value (async_load, "result")
		
		if (string_char_at(response, 0) != "#")
		{
			pop_text (response, "Ok", 4, 1, 2)
			exit;
		}
		
		// if signup was successful
		pop_parent.closing = 1
			
		with (obj_title_popup)
		{
			// Close the "Log-in" popup
			closing = 1
		}
			
		global.loggedin = 1
		global.player_name = username_text.val
		global.session_id = string_copy (response, 2, string_length (response) - 1)
		
		scr_update_session()
			
		pop_text ("Success on creating an account!", "Ok", 4, 1, 2)
	}
}