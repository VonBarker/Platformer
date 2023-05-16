frame = frame + 1;

if(frame = 1) 
{
	instance_create_layer(x + 40, y + 48, "Instances", obj_HighJumpWave);
	instance_create_layer(x - 40, y + 48, "Instances", obj_HighJumpWave);
}
if(frame = 5) 
{
	instance_create_layer(x + 56, y + 48, "Instances", obj_HighJumpWave);
	instance_create_layer(x - 56, y + 48, "Instances", obj_HighJumpWave);
}
if(frame = 10) 
{
	instance_create_layer(x + 72, y + 48, "Instances", obj_HighJumpWave);
	instance_create_layer(x - 72, y + 48, "Instances", obj_HighJumpWave);
}
if(frame = 15) 
{
	instance_create_layer(x + 88, y + 48, "Instances", obj_HighJumpWave);
	instance_create_layer(x - 88, y + 48, "Instances", obj_HighJumpWave);
}
if(frame = 20) 
{
	instance_create_layer(x + 104, y + 48, "Instances", obj_HighJumpWave);
	instance_create_layer(x - 104, y + 48, "Instances", obj_HighJumpWave);
}

if(obj_Game.attack1 = "HighJump") obj_Game.attack1Cooldown = 30*room_speed;
else if(obj_Game.attack2 = "HighJump") obj_Game.attack2Cooldown = 30*room_speed;
else if(obj_Game.attack3 = "HighJump") obj_Game.attack3Cooldown = 30*room_speed;
if(frame = 21) instance_destroy();