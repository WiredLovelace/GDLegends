/// @description  Follow player
if instance_exists (obj_player)
{
	__view_set( e__VW.XView, 0, obj_player.x - __view_get( e__VW.WView, 0 ) / 3 )
	if global.yscroll
	{
		if obj_player.y < __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 3)
			__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((obj_player.y - (__view_get( e__VW.HView, 0 ) / 3)) - __view_get( e__VW.YView, 0 )) * 0.2) )
		if obj_player.y > __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 3) * 2
			__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((obj_player.y - (__view_get( e__VW.HView, 0 ) / 3) * 2) - __view_get( e__VW.YView, 0 )) * 0.2) )
	}
	else
		__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((global.ylimit - (__view_get( e__VW.HView, 0 ) / 2)) - __view_get( e__VW.YView, 0 )) * 0.1) )
		
	if __view_get( e__VW.XView, 0 ) < 0
		__view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) > room_height
		__view_set( e__VW.YView, 0, room_height - __view_get( e__VW.HView, 0 ) )
	if __view_get (e__VW.XView, 0) + __view_get (e__VW.WView, 0) > room_width
		__view_set (e__VW.XView, 0, room_width - __view_get (e__VW.WView, 0))
}
