repeat(irandom_range(coinsMin, coinsMax))
{
	instance_create_layer(x, y + 5, "Instances", obj_Coin);
}