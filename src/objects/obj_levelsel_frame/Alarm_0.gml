if (!room_exists (rm_stereo_madness + ((lvl_no * (global.dungeons_page + 1) - 1))))
	exit;

if global.current_level < (lvl_no * (global.dungeons_page + 1))
	exit // Only unlocked levels can be played

room_goto (rm_stereo_madness + ((lvl_no * (global.dungeons_page + 1) - 1)))
