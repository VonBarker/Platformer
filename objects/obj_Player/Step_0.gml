key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_MeleeAttack = mouse_check_button_pressed(mb_left) || keyboard_check(ord("F"));
key_basicAttack =  keyboard_check(ord("H"));
key_attack1 = keyboard_check(ord("J"));
key_attack2 = keyboard_check(ord("K"));
key_attack3 = keyboard_check(ord("L"));

// Movement
var _move = key_right - key_left;

if(controlable = true)
{
	hsp = _move * walksp;
}

if (place_meeting(x,y+1,obj_Wall))
{
	grounded = true;
}
else grounded = false;

vsp = vsp + grv;

if(key_jump) && (grounded)
{
	vsp = -jumpsp;
}


//Horizontal Collision
if (place_meeting(x+hsp,y,obj_Wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_Wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_Wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Attacks
//Basic Projectile
if(key_basicAttack) && (basicNotOnCooldown) && (stamina >= basicProjectileStaminCost)
{
	basicNotOnCooldown = false;
	instance_create_layer(x, y, "Instances", obj_BasicProjectile);
	stamina = stamina - basicProjectileStaminCost;
	basicCooldown = obj_BasicProjectile.cooldown;
	alarm[0] = basicCooldown;
	alarm[9] = room_speed*5;
}
//Basic Melee
if(key_MeleeAttack && key_up && canAttack)
{
	instance_create_layer(x, y - (sprite_height/2) - 10, "Instances", obj_UpwardAttack);
	canAttack = false;
	alarm[6] = meleeCooldown;
}
else if(key_MeleeAttack && key_down && canAttack)
{
	instance_create_layer(x, y + (sprite_height/2) + 10, "Instances", obj_DownwardAttack);
	canAttack = false;
	alarm[6] = meleeCooldown;
}
else if(key_MeleeAttack && canAttack)
{
	instance_create_layer(x + (32 * image_xscale), y, "Instances", obj_HorizontalAttack);
	canAttack = false;
	alarm[6] = meleeCooldown;
}

//Solid Enemy Collision
if (place_meeting(x,y+2,obj_EnemiesSolid))
{
	controlable = false;
	if(instance_nearest(x, y, obj_EnemiesSolid).HorizontalknockbackForce !=0)
	{
		hsp = instance_nearest(x, y, obj_EnemiesSolid).HorizontalknockbackForce*sign(x - instance_nearest(x, y, obj_Enemies).x);
	}
	if(instance_nearest(x, y, obj_EnemiesSolid).VerticalknockbackForce !=0)
	{
		vsp = -instance_nearest(x, y, obj_EnemiesSolid).VerticalknockbackForce*0.75;
	}
	alarm[4] = 5;
	if(!invincible)
	{
		hp = hp - instance_nearest(x, y, obj_EnemiesSolid).damage;
		alarm[7] = healthRegenCooldown;
	}
	invincible = true;
	alarm[5] = 10;
}

//Animation
if (hsp != 0) && (!key_down)
{
	image_xscale = sign(hsp);
}

//Health
if(hp <= 0)
{
	room_restart();
}
if(hp > 100)
{
	hp = 100;
}
//Stamina
if(stamina > 100)
{
	stamina = 100;
}