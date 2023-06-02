if(keyboard_check_pressed(vk_escape) && instance_position(obj_Player.x, obj_Player.y, obj_SafeZone))
{
	instance_create_layer(obj_Player.x, obj_Player.y, "Instances", obj_PauseWall);
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Settings", SettingMenu],
				["Main Menu", MainMenu],
				["Save Game", SaveGame],
				["Close", ClosePauseMenu]
			],
			"",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}

if(keyboard_check_pressed(vk_tab) && instance_position(obj_Player.x, obj_Player.y, obj_SafeZone))
{
	if!(instance_exists(obj_AbilitySelectionMenu)) 
	{
		instance_create_depth(0, 0, -998, obj_AbilitySelectionMenu);
		instance_create_layer(obj_Player.x, obj_Player.y, "Instances", obj_PauseWall)
	}
	else 
	{
		instance_destroy(obj_AbilitySelectionMenu);
		instance_destroy(obj_PauseWall)
	}
}