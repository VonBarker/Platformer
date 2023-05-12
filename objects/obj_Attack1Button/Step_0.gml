x = global.cameraX + global.cameraWidth/6 * 5;
y = global.cameraY + global.cameraHeight/16 * 15;

image_xscale = global.cameraWidth/1376;
image_yscale = global.cameraHeight/768;

if(obj_Game.attack1Cooldown < 0) cooldown = 0;
else cooldown = obj_Game.attack1Cooldown/room_speed;