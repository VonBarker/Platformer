speed = obj_Player.image_xscale * 8;
image_xscale = sign(speed);

startLocationX = x;
startLocationY = y;

cooldown = 30;

damage = irandom_range(4,7);
knockbackForce = 0;