/// @description Initialisation
if !variable_global_exists ("editing_lvl")
	room_goto (rm_prelvl_editor)

songs = tag_get_asset_ids("GameMusic", asset_sound)

scr_editor_load_lvl (global.editing_lvl)

global.testing = 0 // 1 for testing the level

global.bgcolor = c_white
global.gcolor = c_white

hide = 0 // Set to 1 to hide the UI
lid = layer_get_id ("EditorCore")

can_pan = 1 // If 0, camera cannot be dragged

scr_editor_tables_init() // Initialise object "tables"

gesture_tap_count (false)

objsel[20] = 0
offsetx = 0
offsety = 900

var cpage_left = instance_create_layer (302, 960, "EditorCore", lvl_editor_change_page)
cpage_left.image_xscale = -1

for (var i = 0; i < 20; i++)
{
	objsel[i] = instance_create_layer (427 + offsetx, offsety, "EditorCore", lvl_editor_objsel)
	objsel[i].scale_start = 0.5
	objsel[i].yscale = 0.5
	
	objsel[i].image_speed = 0
	
	objsel[i].objsel_id = i
	objsel[i].tosel = -1
	objsel[i].tosel_id = -1
	objsel[i].depth = depth + 1
	
	if (i == 9)
	{
		offsetx = 0
		offsety += 120
		
		continue;
	}
	
	offsetx += 122
}

instance_create_layer (1650, 960, "EditorCore", lvl_editor_change_page)

rect = instance_create_layer (0, 0, "EditorCore", lvl_editor_gui)
rect.depth = depth + 3

// Editor variables
global.selecting_type = 0 // This is the type we are selecting. Check notes for more info.
global.selecting_page = 0 // The page of the type we are selecting

if !variable_global_exists("lvl_name") || global.lvl_name == noone
	global.lvl_name = "Unnamed"

global.place_obj = noone // The object we have selected to build with
global.selected_obj = noone // The object we have selected apply transformations to

selecting_text_width [3] = -1
selecting_text_height [3] = -1

// Set initial camera position
camera_set_view_pos (view_camera [0], 0, 3720)