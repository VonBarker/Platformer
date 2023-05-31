if(position_meeting(mouse_x, mouse_y, obj_AbilitySelectionLargeSwordSwing) && mouse_check_button(mb_left) && obj_Game.swordSwingUnlocked = true && !obj_AbilitySelectionMenu.abilitySelected)
{
	x = mouse_x - 40;
	y = mouse_y - 40;
	obj_AbilitySelectionMenu.abilitySelected = true;
}

if(mouse_check_button_released(mb_left) || !position_meeting(mouse_x, mouse_y, obj_AbilitySelectionLargeSwordSwing))
{
	if(position_meeting(x + 40, y + 40, obj_Attack1Button)) obj_Game.attack1 = "SwordSwing";
	if(position_meeting(x + 40, y + 40, obj_Attack2Button)) obj_Game.attack2 = "SwordSwing";
	if(position_meeting(x + 40, y + 40, obj_Attack3Button)) obj_Game.attack3 = "SwordSwing";
	x = startLocationX;
	y = startLocationY;
	obj_AbilitySelectionMenu.abilitySelected = false;
}