x = x + 8*dir;

frame = frame + 1;

if!(frame % 4) instance_create_layer(x, y,"Instances", obj_SwordWave);

if(obj_Game.attack1 = "SwordSwing") obj_Game.attack1Cooldown = 5*room_speed;
else if(obj_Game.attack2 = "SwordSwing") obj_Game.attack2Cooldown = 5*room_speed;
else if(obj_Game.attack3 = "SwordSwing") obj_Game.attack3Cooldown = 5*room_speed;
if(frame >= room_speed/3) instance_destroy();