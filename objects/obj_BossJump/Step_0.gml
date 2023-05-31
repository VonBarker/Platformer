frame = frame + 1;

if(frame = 1) 
{
	instance_create_layer(x + 50, y + 96, "Instances", obj_BossJumpWave);
	instance_create_layer(x - 50, y + 96, "Instances", obj_BossJumpWave);
}
if(frame = 5) 
{
	instance_create_layer(x + 66, y + 96, "Instances", obj_BossJumpWave);
	instance_create_layer(x - 66, y + 96, "Instances", obj_BossJumpWave);
}
if(frame = 10) 
{
	instance_create_layer(x + 82, y + 96, "Instances", obj_BossJumpWave);
	instance_create_layer(x - 82, y + 96, "Instances", obj_BossJumpWave);
}
if(frame = 15) 
{
	instance_create_layer(x + 98, y + 96, "Instances", obj_BossJumpWave);
	instance_create_layer(x - 98, y + 96, "Instances", obj_BossJumpWave);
}
if(frame = 20) 
{
	instance_create_layer(x + 114, y + 96, "Instances", obj_BossJumpWave);
	instance_create_layer(x - 114, y + 96, "Instances", obj_BossJumpWave);
}

if(obj_Boss.vsp > -1) obj_Boss.vsp = 25;
if(obj_Boss.grounded && frame > 20) 
{
	obj_Boss.walksp = 0.5;
	instance_destroy();
}