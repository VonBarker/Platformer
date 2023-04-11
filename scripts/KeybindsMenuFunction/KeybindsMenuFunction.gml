function KeybindsMenu(){
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Walk Left:    " + string(obj_Game.key_left), -1],
				["Option 2", -1],
				["Option 3", -1]
			],
			"Keybinds",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}