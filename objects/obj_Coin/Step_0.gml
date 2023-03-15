if(bounce > 0)
{
	hsp = momentum * 1.5;
}
else
{
	hsp = 0;
}

vsp = vsp + grv;

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

if (place_meeting(x,y+vsp,obj_Wall))
{
	vsp = -bounce;
	bounce = bounce - 1;
}
