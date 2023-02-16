key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// Movement
var _move = key_right - key_left;
hsp = _move * walksp;
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

//Walljump
if (key_jump) && (place_meeting(x+1,y,obj_Wall)) && (key_right)
{
	vsp = -jumpsp;
	hsp = -walksp*1.5;
	controlable = false;
	alarm[0] = 40;
}
else if (key_jump) && (place_meeting(x-1,y,obj_Wall)) && (key_left)
{
	vsp = -jumpsp;
	hsp = walksp;
	controlable = false;
	alarm[0] = 40;
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