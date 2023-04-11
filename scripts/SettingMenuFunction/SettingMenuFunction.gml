function SettingMenu(){
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Keybinds", KeybindsMenu],
				["Option 2", -1],
				["Option 3", -1]
			],
			"Settings",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}