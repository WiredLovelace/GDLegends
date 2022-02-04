// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_editor_tables_init(){
	global.solidt = 0
	global.trapst = 0
	global.specit = 0
	
	// Initialise some arrays that has information about the objects that will be used in the editor
	scr_editor_solidt_init () // Initialise solids table
	scr_editor_trapst_init () // Initialise traps table
	scr_editor_specit_init () // Initialise special table
}