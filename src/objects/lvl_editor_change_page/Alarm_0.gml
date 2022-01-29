/// @description Change the page

var arrlen = -1

if global.selecting_type == 0
{
	arrlen = array_length (global.solidt)
} else if global.selecting_type == 1
{
	arrlen = array_length (global.trapst)
} else if global.selecting_type == 2
{
	arrlen = array_length (global.specit)
}

if (arrlen != -1)// arrlen / (20 * (global.selecting_page + 1)) > 1)
{
	with (lvl_editor_objsel)
	{
		tosel_id = -1
	}
	
	if (image_xscale >= 1)
	{
		global.selecting_page = (arrlen / (20 * (global.selecting_page + 1)) > 1) ? global.selecting_page + 1 : 0
		exit
	}
	
	global.selecting_page = (global.selecting_page == 0) ? int64 (arrlen / 20) : global.selecting_page - 1
}