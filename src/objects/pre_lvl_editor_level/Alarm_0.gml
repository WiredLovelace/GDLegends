/// @description Edit this level
if global.levels [0] == 0 || (level + (4 * global.pre_lvl_editor_page)) > array_length (global.levels) - 1
	exit

var final_lev = level + (4 * global.pre_lvl_editor_page)
global.editing_lvl = global.levels [final_lev]
global.lvl_name = scr_get_level_name (global.levels [final_lev])
room_goto (rm_lvl_editor)