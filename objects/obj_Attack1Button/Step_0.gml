x = global.cameraX + global.cameraWidth/24 * 19;
y = global.cameraY + global.cameraHeight/16 * 15;

xScale = global.cameraWidth/1376;
yScale = global.cameraHeight/768;


if(obj_Game.attack1Cooldown < 0) cooldown = 0;
else cooldown = obj_Game.attack1Cooldown/room_speed;

if(position_meeting(mouse_x, mouse_y, obj_Attack1Button) && mouse_check_button_pressed(mb_left))
{
	if(obj_Game.attack1Cooldown <= 0  && !instance_exists(obj_HighJumpAbility))
	{
		if(obj_Game.attack1 = "HighJump") instance_create_layer(obj_Player.x, obj_Player.y, "Instances", obj_HighJumpAbility);
	}
	if(obj_Game.attack1Cooldown <= 0  && !instance_exists(obj_LargeSwordSwingAbility))
	{
		if(obj_Game.attack1 = "SwordSwing") instance_create_layer(obj_Player.x, obj_Player.y + 48, "Instances", obj_LargeSwordSwingAbility);
	}
	if(obj_Game.attack1Cooldown <= 0  && !instance_exists(obj_RapidFireAbility))
	{
		if(obj_Game.attack1 = "RapidFire") instance_create_layer(obj_Player.x, obj_Player.y, "Instances", obj_RapidFireAbility);
	}
}