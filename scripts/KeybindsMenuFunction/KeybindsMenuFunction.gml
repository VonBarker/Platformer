function KeybindsMenu(){
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Walk Left:    " + global.asc_def[obj_Game.key_left], -1],
				["Walk Right:   " + global.asc_def[obj_Game.key_right], -1],
				["Aim Up:       " + global.asc_def[obj_Game.key_up], -1],
				["Aim Down:     " + global.asc_def[obj_Game.key_down], -1],
				["Jump:         " + global.asc_def[obj_Game.key_jump], -1],
				["Close", -1]
			],
			"Keybinds",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}