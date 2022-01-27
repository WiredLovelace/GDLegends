// Gameplay definitions
global.music = 0
global.spdboost = 1
global.pause = 0
global.pulse = 0
global.yscroll = 1
global.g1y = 0
global.g2y = 0
global.ylimit = 0
global.pause = 0

global.session_id = "" // Here we store the $_SESSION id
global.server_url = "http://localhost" // The URL of the servers

// Player Stats
global.player_level = 0 // The player level
global.player_exp = 0 // The EXP points of the player
global.player_stars = 0
global.player_coins = 0
global.player_gems = 100
global.player_name = "Player" // The name of the player

global.current_level = 1 // The level_no we are currently in

global.cube = 0 // The spr_player_a and spr_player_b image index
global.ship = 0
global.ball = 0
global.ufo = 0
global.wave = 0
global.robot = 0
global.spider = 0

global.col1 = c_yellow
global.col2 = c_aqua

// Some other definitions here
global.give_stars = 0 // The number of stars to be added after colliding with the winning wall

global.dungeons_page = 0 // The page we are currently on
global.dungeons_max_page = 0 // The max number of pages

global.initial_bgcolor = c_red
global.initial_gcolor = c_red
global.bgcolor = c_red
global.gcolor = c_red

global.negrito = 0

room_goto_next ()