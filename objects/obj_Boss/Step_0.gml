hsp = dir * walksp;
vsp = vsp + grv;

angleToPlayer = point_direction(x, y, obj_Player.x, obj_Player.y);

if(distance_to_object(obj_Player) < 800)
{
	if(angleToPlayer < 90) || (angleToPlayer > 270) dir = 1;
	else dir = -1;
}

if (place_meeting(x,y+1,obj_Wall) || place_meeting(x,y+1,obj_EnemyWall))
{
	grounded = true;
}
else grounded = false;

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
if(distance_to_object(obj_Player) < 450 && attackNotOnCooldown)
{
	attackNotOnCooldown = false;
	instance_create_layer(x, y, "Instances", obj_BossJump);
	alarm[2] = attackCooldown;
}

//Health
if(hp <= 0)
{
	instance_destroy();
}