if(position_meeting(mouse_x, mouse_y, obj_AbilitySelectionLargeSwordSwing) && mouse_check_button_pressed(mb_left))
{
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Ability 1", -1],
				["Ability 2", -1],
				["Ability 3", -1],
				["Close", -1]
			],
			"Set As...",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}