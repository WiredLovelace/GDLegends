if global.player_exp >= required_exp
{
	left_exp = global.player_exp - required_exp
	global.player_exp = left_exp
	global.player_level = global.player_level + 1
	required_exp = global.player_level * 100
}