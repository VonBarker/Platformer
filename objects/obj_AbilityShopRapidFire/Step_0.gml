if(distance_to_object(obj_Player) < 24 && obj_Player.check_key_interact)
{
	if(obj_Game.coins >= 25)
	{
		obj_Game.coins = obj_Game.coins - 25;
		obj_Game.rapidFireUnlocked = true;
		instance_destroy();
	}
}