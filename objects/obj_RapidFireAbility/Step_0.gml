x = obj_Player.x;
y = obj_Player.y;

frame = frame + 1;

if!(frame % 10)
{
	instance_create_layer(x, y, "Instances", obj_BasicProjectile);
}

if(obj_Game.attack2 = "RapidFire") obj_Game.attack2Cooldown = 45*room_speed;
if(frame >= 200) instance_destroy();