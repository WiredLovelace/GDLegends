// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_trapst_init(){
	global.trapst [0] = obj_spike1
	
	array_push (global.trapst, obj_spike2)
	array_push (global.trapst, obj_spike3)
	array_push (global.trapst, obj_floor_spike)
}