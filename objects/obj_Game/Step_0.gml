if(keyboard_check_pressed(vk_escape))
{
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/12 * 5,
			[
				["Option 1", -1],
				["Option 2", -1],
				["Option 3", -1]
			],
			"",
			global.cameraWidth/6,
			global.cameraHeight/6
		)
}