draw_self();
if(distance_to_object(obj_Player) < 24)
{
	image_blend = c_ltgray;
	draw_text(x, y, "Large Sword Swing \nCost: 45 Coins \nPress " + global.asc_def[obj_Game.key_interact] + " to Buy")
}
else 
{
	image_blend = -1;
}