controlable = false;
alarm[0] = 5;
if(!invincible)
{
	hp = hp - obj_Attack.damage;
	if(obj_Attack.knockbackForce != 0)
	{
		hsp = obj_Attack.knockbackForce*-dir;
		vsp = -obj_Attack.knockbackForce*0.75;
		dir = -dir;
	}
}
invincible = true;
alarm[1] = 10;