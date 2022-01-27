var res = ""

if ds_map_find_value (async_load, "id") == loggedin_req
{
	if ds_map_find_value (async_load, "status") == 0
	{
		res = ds_map_find_value (async_load, "result")
		
		if (res == "0")
		{
			alarm[0] = 10 // Create login popup
			exit
		}
		
		global.loggedin = 1
		global.player_name = res
	}
}

if (ds_map_find_value (async_load, "id")) == load_req
{
	if (ds_map_find_value (async_load, "status")) == 0
	{
		res = ds_map_find_value (async_load, "result")
		
		if (res == "0")
		{
			pop_text ("There's been an error retrieving#your data.", "Ok", 4, 1, 2)
		}
		
		scr_data_parse (res)
		room_goto (rm_main_menu) // When we are finished loading, we can go to the menu
	}
}