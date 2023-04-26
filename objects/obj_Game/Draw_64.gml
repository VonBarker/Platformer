var c = c_white;
if(instance_exists(obj_Player))
{
	draw_text_transformed_color(0, 0, "HEALTH: " + string(obj_Player.hp), 1, 1, 0, c, c, c, c, 1);
	draw_text_transformed_color(0, 20, "STAMINA: " + string(obj_Player.stamina), 1, 1, 0, c, c, c, c, 1);
	draw_text_transformed_color(0, 50, "COINS: " + string(obj_Player.coins), 1, 1, 0, c, c, c, c, 1);
}