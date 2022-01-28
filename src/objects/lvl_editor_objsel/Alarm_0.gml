/// @description Change the place_obj

if (global.place_obj == tosel)
{
	global.place_obj = noone
	exit
}

if (tosel != undefined && tosel != -1)
{
	global.place_obj = tosel
}