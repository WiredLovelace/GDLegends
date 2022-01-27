/// @description Sync local data with the server
req = http_post_string (global.server_url + "/accounts/account_sync_data.php",
	"sid=" + global.session_id +
	"&level=" + string (global.player_level) +
	"&exp=" + string (global.player_exp) +
	"&stars=" + string (global.player_stars) +
	"&coins=" + string (global.player_coins) +
	"&gems=" + string (global.player_gems) +
	"&current_level=" + string (global.current_level) +
	"&cube=" + string (global.cube) +
	"&ship=" + string (global.ship) +
	"&ball=" + string (global.ball) +
	"&ufo=" + string (global.ufo) +
	"&wave=" + string (global.wave) +
	"&robot=" + string (global.robot) +
	"&spider=" + string (global.spider) +
	"&col1=" + string (global.col1) +
	"&col2=" + string (global.col2))