if(keyboard_check_pressed(vk_escape))
{
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Settings", SettingMenu],
				["Option 2", -1],
				["Close", -1]
			],
			"",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}