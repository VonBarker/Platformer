controlable = false;
if(instance_nearest(x, y, obj_Enemies).knockbackForce !=0)
{
	hsp = instance_nearest(x, y, obj_Enemies).knockbackForce*sign(x - instance_nearest(x, y, obj_Enemies).x);
	vsp = -instance_nearest(x, y, obj_Enemies).knockbackForce*0.75;
}
alarm[4] = 5;
if(!invincible)
{
	hp = hp - instance_nearest(x, y, obj_Enemies).damage;
	alarm[7] = healthRegenCooldown;
}
invincible = true;
alarm[5] = 10;