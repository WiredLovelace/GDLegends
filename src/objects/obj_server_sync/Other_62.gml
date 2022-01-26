/// @description Process the request
var res = ""

if (ds_map_find_value (async_load, "id")) == req
{
	if (ds_map_find_value (async_load, "status")) == 0
	{
		res = ds_map_find_value (async_load, "result")
		
		if (res != "0")
		{
			pop_text (res, "Ok", 4, 1, 2)
		}
	}
}