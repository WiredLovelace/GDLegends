/// @description Create the level
global.lvl_name = name_text.val
scr_editor_save_lvl (string (global.total_levels), 0)
global.levels = scr_get_local_levels ("levels/*")
global.total_levels += 1
pop_parent.closing = 1