/// @description Go to mode room

if (mode_room == room)
{
	pop_text ("There be dragons...", "Ohhh", 4, 1, 2)
	exit
}

room_goto (mode_room)