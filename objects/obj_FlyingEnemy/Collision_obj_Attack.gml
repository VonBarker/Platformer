if(!invincible)
{
	hp = hp - instance_nearest(x, y, obj_Attack).damage;
}
invincible = true;
alarm[1] = 10;