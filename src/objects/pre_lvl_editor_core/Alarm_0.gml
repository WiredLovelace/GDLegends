/// @description Update total_levels
global.total_levels = array_length (global.levels) == 1 && global.levels [0] == 0 ? 1 : array_length (global.levels) + 1