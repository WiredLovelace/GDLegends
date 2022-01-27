// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_data_parse(str){
	// Loads data from a string
	var file = file_text_open_from_string(str)
	
	global.player_level = file_text_read_real(file)
	file_text_readln (file)
	
	global.player_exp = file_text_read_real(file)
	file_text_readln (file)
	
	global.player_stars = file_text_read_real(file)
	file_text_readln (file)
	
	global.player_coins = file_text_read_real (file)
	file_text_readln (file)
	
	global.player_gems = file_text_read_real (file)
	file_text_readln (file)
	
	global.current_level = file_text_read_real(file)
	file_text_readln (file)
	
	global.cube = file_text_read_real(file)
	file_text_readln (file)
	
	global.ship = file_text_read_real(file)
	file_text_readln (file)
	
	global.ball = file_text_read_real(file)
	file_text_readln (file)
	
	global.ufo = file_text_read_real(file)
	file_text_readln (file)
	
	global.wave = file_text_read_real(file)
	file_text_readln (file)
	
	global.robot = file_text_read_real(file)
	file_text_readln (file)
	
	global.spider = file_text_read_real(file)
	file_text_readln (file)
	
	global.col1 = file_text_read_real(file)
	file_text_readln (file)
	
	global.col2 = file_text_read_real(file)
	file_text_readln (file)
	
	file_text_close (file)
}