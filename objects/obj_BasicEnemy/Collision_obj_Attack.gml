controlable = false;
alarm[0] = 5;
if ((point_direction(x, y, obj_Player.x, obj_Player.y) < 90) || (point_direction(x, y, obj_Player.x, obj_Player.y) > 270)) dir = -1;
else dir = 1;
if(!invincible)
{
	hp = hp - instance_nearest(x, y, obj_Attack).damage;
	if(instance_nearest(x, y, obj_Attack).knockbackForce != 0)
	{
		hsp = instance_nearest(x, y, obj_Attack).knockbackForce*dir;
		vsp = -instance_nearest(x, y, obj_Attack).knockbackForce*0.75;
	}
}
invincible = true;
alarm[1] = 10;