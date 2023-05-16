if(position_meeting(mouse_x, mouse_y, obj_AbilitySelectionHighJump) && mouse_check_button(mb_left))
{
	x = mouse_x - 40;
	y = mouse_y - 40;
}

if(mouse_check_button_released(mb_left) || !position_meeting(mouse_x, mouse_y, obj_AbilitySelectionHighJump))
{
	if(position_meeting(x + 40, y + 40, obj_Attack1Button)) obj_Game.attack1 = "HighJump";
	if(position_meeting(x + 40, y + 40, obj_Attack2Button)) obj_Game.attack2 = "HighJump";
	if(position_meeting(x + 40, y + 40, obj_Attack3Button)) obj_Game.attack3 = "HighJump";
	x = startLocationX;
	y = startLocationY;
}