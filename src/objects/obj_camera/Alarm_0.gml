/// @description  Optimisations

instance_deactivate_all (true)
instance_activate_region (__view_get( e__VW.XView, 0 ) - 200, __view_get( e__VW.YView, 0 ) - 64, __view_get( e__VW.WView, 0 ) + 200, __view_get( e__VW.HView, 0 ) + 64, true)
/*instance_deactivate_all (true)
instance_activate_region (view_xview[0] - 64, view_yview [0] -64, view_wview[0] + 128, view_hview[0] + 128, true)*/

// Some other instances that need to be activated
if (instance_exists (obj_restart))
	instance_activate_object (obj_restart)
	
instance_activate_object (obj_ground)
instance_activate_object (obj_ground2)

instance_activate_object (obj_player)
instance_activate_object (obj_player_deadbox)
instance_activate_object (obj_trigger_par)

instance_activate_object (obj_level_handler)

alarm[0] = room_speed / 8
/* */
/*  */
