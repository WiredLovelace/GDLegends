respawning = 0

if (!instance_exists (obj_player))
{
	exit
}

__view_set( e__VW.WView, 0, 1280 )
__view_set( e__VW.HView, 0, 720 )
__view_set( e__VW.YView, 0, obj_player.y )