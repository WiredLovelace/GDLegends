/// @description Perform the change

if (next == 0)
	next = time * room_speed
	
if (activated && next_step != next)
{
	next_step += 1
	
	global.gcolor = merge_color (prevcol, tocol, next_step / next)
}