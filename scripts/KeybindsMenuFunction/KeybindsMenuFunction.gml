function KeybindsMenu(){
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Walk Left:        " + global.asc_def[obj_Game.key_left], ChangeLeftKeybind],
				["Walk Right:       " + global.asc_def[obj_Game.key_right], ChangeRightKeybind],
				["Aim Up:           " + global.asc_def[obj_Game.key_up], ChangeUpKeybind],
				["Aim Down:         " + global.asc_def[obj_Game.key_down], ChangeDownKeybind],
				["Jump:             " + global.asc_def[obj_Game.key_jump], ChangeJumpKeybind],
				["Interact:         " + global.asc_def[obj_Game.key_interact], ChangeInteractKeybind],
				["Melee:            " + global.asc_def[obj_Game.key_MeleeAttack_Button1], ChangeMeleeKeybind],
				["Basic Attack:     " + global.asc_def[obj_Game.key_BasicAttack], ChangeBasicAttackKeybind],
				["Special Attack 1: " + global.asc_def[obj_Game.key_attack1], ChangeSpecialAttack1Keybind],
				["Special Attack 2: " + global.asc_def[obj_Game.key_attack2], ChangeSpecialAttack2Keybind],
				["Special Attack 3: " + global.asc_def[obj_Game.key_attack3], ChangeSpecialAttack3Keybind],
				["Close", -1]
			],
			"Keybinds",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}