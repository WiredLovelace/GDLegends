// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_solidt_init(){
	// Initialise solid table
	global.solidt [0] = obj_wall
	
	array_push (global.solidt, obj_grid7)
	array_push (global.solidt, obj_grid1)
	array_push (global.solidt, obj_grid2)
	array_push (global.solidt, obj_grid3)
	array_push (global.solidt, obj_grid4)
	array_push (global.solidt, obj_grid5)
	array_push (global.solidt, obj_grid6)
	array_push (global.solidt, obj_grid8)
	
	array_push (global.solidt, obj_regular_platform)
	
	array_push (global.solidt, obj_tile1)
	array_push (global.solidt, obj_tile2)
	array_push (global.solidt, obj_tile3)
	array_push (global.solidt, obj_tile4)
	array_push (global.solidt, obj_tile5)
	array_push (global.solidt, obj_tile6)
	array_push (global.solidt, obj_tile7)
	
	array_push (global.solidt, obj_brick1)
	array_push (global.solidt, obj_brick2)
	array_push (global.solidt, obj_brick3)
	array_push (global.solidt, obj_brick4)
}