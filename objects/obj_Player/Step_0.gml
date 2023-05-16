check_key_up = keyboard_check(obj_Game.key_up);
check_key_left = keyboard_check(obj_Game.key_left);
check_key_down = keyboard_check(obj_Game.key_down);
check_key_right = keyboard_check(obj_Game.key_right);
check_key_jump = keyboard_check_pressed(obj_Game.key_jump);
check_key_MeleeAttack = keyboard_check(obj_Game.key_MeleeAttack_Button1) || mouse_check_button_pressed(obj_Game.key_MeleeAttack_Button2);
check_key_BasicAttack =  keyboard_check(obj_Game.key_BasicAttack);
check_key_attack1 = keyboard_check(obj_Game.key_attack1);
check_key_attack2 = keyboard_check(obj_Game.key_attack2);
check_key_attack3 = keyboard_check(obj_Game.key_attack3);

// Movement
var _move = check_key_right - check_key_left;

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

if(check_key_jump) && (grounded)
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
if(check_key_BasicAttack) && (basicNotOnCooldown) && (stamina >= basicProjectileStaminCost)
{
	basicNotOnCooldown = false;
	instance_create_layer(x, y, "Instances", obj_BasicProjectile);
	stamina = stamina - basicProjectileStaminCost;
	basicCooldown = obj_BasicProjectile.cooldown;
	alarm[0] = basicCooldown;
	alarm[9] = room_speed*5;
}
//Basic Melee
if(check_key_MeleeAttack && check_key_up && canAttack)
{
	instance_create_layer(x, y - (sprite_height/2) - 10, "Instances", obj_UpwardAttack);
	canAttack = false;
	alarm[6] = meleeCooldown;
}
else if(check_key_MeleeAttack && check_key_down && canAttack)
{
	instance_create_layer(x, y + (sprite_height/2) + 10, "Instances", obj_DownwardAttack);
	canAttack = false;
	alarm[6] = meleeCooldown;
}
else if(check_key_MeleeAttack && canAttack)
{
	instance_create_layer(x + (32 * image_xscale), y, "Instances", obj_HorizontalAttack);
	canAttack = false;
	alarm[6] = meleeCooldown;
}
//Special Attack 1
obj_Game.attack1Cooldown = obj_Game.attack1Cooldown - 1;
if(check_key_attack1 && obj_Game.attack1Cooldown <= 0  && !instance_exists(obj_HighJumpAbility))
{
	if(obj_Game.attack1 = "HighJump") instance_create_layer(x, y, "Instances", obj_HighJumpAbility);
}
if(check_key_attack1 && obj_Game.attack1Cooldown <= 0  && !instance_exists(obj_LargeSwordSwingAbility))
{
	if(obj_Game.attack1 = "SwordSwing") instance_create_layer(x, y + 48, "Instances", obj_LargeSwordSwingAbility);
}
if(check_key_attack1 && obj_Game.attack1Cooldown <= 0  && !instance_exists(obj_RapidFireAbility))
{
	if(obj_Game.attack1 = "RapidFire") instance_create_layer(x, y, "Instances", obj_RapidFireAbility);
}

//Special Attack 2
obj_Game.attack2Cooldown = obj_Game.attack2Cooldown - 1;
if(check_key_attack2 && obj_Game.attack2Cooldown <= 0  && !instance_exists(obj_HighJumpAbility))
{
	if(obj_Game.attack2 = "HighJump") instance_create_layer(x, y, "Instances", obj_HighJumpAbility);
}
if(check_key_attack2 && obj_Game.attack2Cooldown <= 0  && !instance_exists(obj_LargeSwordSwingAbility))
{
	if(obj_Game.attack2 = "SwordSwing") instance_create_layer(x, y + 48, "Instances", obj_LargeSwordSwingAbility);
}
if(check_key_attack2 && obj_Game.attack2Cooldown <= 0  && !instance_exists(obj_RapidFireAbility))
{
	if(obj_Game.attack2 = "RapidFire") instance_create_layer(x, y, "Instances", obj_RapidFireAbility);
}

//Special Attack 3
obj_Game.attack3Cooldown = obj_Game.attack3Cooldown - 1;
if(check_key_attack3 && obj_Game.attack3Cooldown <= 0  && !instance_exists(obj_HighJumpAbility))
{
	if(obj_Game.attack3 = "HighJump") instance_create_layer(x, y, "Instances", obj_HighJumpAbility);
}
if(check_key_attack3 && obj_Game.attack3Cooldown <= 0  && !instance_exists(obj_LargeSwordSwingAbility))
{
	if(obj_Game.attack3 = "SwordSwing") instance_create_layer(x, y + 48, "Instances", obj_LargeSwordSwingAbility);
}
if(check_key_attack3 && obj_Game.attack3Cooldown <= 0  && !instance_exists(obj_RapidFireAbility))
{
	if(obj_Game.attack3 = "RapidFire") instance_create_layer(x, y, "Instances", obj_RapidFireAbility);
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
if (hsp != 0) && (!check_key_down)
{
	image_xscale = sign(hsp);
}

//Health
if(hp <= 0)
{
	LoadGame();
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