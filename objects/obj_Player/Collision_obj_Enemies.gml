controlable = false;
if(instance_nearest(x, y, obj_Enemies).HorizontalknockbackForce !=0)
{
	hsp = instance_nearest(x, y, obj_Enemies).HorizontalknockbackForce*sign(x - instance_nearest(x, y, obj_Enemies).x);
}
if(instance_nearest(x, y, obj_Enemies).VerticalknockbackForce !=0)
{
	vsp = -instance_nearest(x, y, obj_Enemies).VerticalknockbackForce*0.75;
}
alarm[4] = 5;
if(!invincible)
{
	hp = hp - instance_nearest(x, y, obj_Enemies).damage;
	alarm[7] = healthRegenCooldown;
}
invincible = true;
alarm[5] = 10;