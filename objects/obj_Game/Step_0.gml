if(keyboard_check_pressed(vk_escape))
{
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Settings", SettingMenu],
				["Main Menu", MainMenu],
				["Save Game", SaveGame],
				["Close", -1]
			],
			"",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}