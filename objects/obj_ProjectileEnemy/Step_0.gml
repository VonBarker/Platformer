if(distance_to_object(obj_Player) < 300)
{
	walksp = 0;
}
else walksp = 2;

if(controlable)
{
	hsp = dir * walksp;
}
vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_Wall) || place_meeting(x+hsp,y,obj_EnemyWall))
{
	while (!place_meeting(x+sign(hsp),y,obj_Wall) && !place_meeting(x+sign(hsp),y,obj_EnemyWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	dir = dir * -1;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_Wall) || place_meeting(x,y+vsp,obj_EnemyWall))
{
	while (!place_meeting(x,y+sign(vsp),obj_Wall) && !place_meeting(x,y+sign(vsp),obj_EnemyWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	
	if(!position_meeting(x + (sprite_width/2)*dir, y + (sprite_height/2) + 1, obj_Wall) && !position_meeting(x + (sprite_width/2)*dir, y + (sprite_height/2) + 1, obj_EnemyWall))
	{
		dir = dir * -1;
	}
}
y = y + vsp;

//Attack
if(distance_to_object(obj_Player) < 300 && attackNotOnCooldown)
{
	attackNotOnCooldown = false;
	instance_create_layer(x, y, "Instances", obj_BasicEnemyProjectile);
	alarm[2] = attackCooldown;
}

//Health
if(hp <= 0)
{
	instance_destroy();
}