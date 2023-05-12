if(position_meeting(mouse_x, mouse_y, obj_AbilitySelectionHighJump) && mouse_check_button(mb_left))
{
	x = mouse_x - 40;
	y = mouse_y - 40;
}

if(mouse_check_button_released(mb_left) || !position_meeting(mouse_x, mouse_y, obj_AbilitySelectionHighJump))
{
	if(position_meeting(x, y, obj_Attack1Button)) obj_Game.attack1 = "HighJump";
	x = startLocationX;
	y = startLocationY;
}