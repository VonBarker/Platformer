if(distance_to_object(obj_Player) < 128)
{
	if(obj_Player.check_key_interact)
	{
		instance_destroy();
	}
}