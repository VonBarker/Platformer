alarm[0] = 5;
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