draw_self();
if(distance_to_object(obj_Player) < 24)
{
	image_blend = c_ltgray;
	draw_text(x, y - 32, "Press " + global.asc_def[obj_Game.key_interact] + " to \nTeleport to Spawn")
}
else 
{
	image_blend = -1;
}