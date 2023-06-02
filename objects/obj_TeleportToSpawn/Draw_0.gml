draw_self();
if(distance_to_object(obj_Player) < 24)
{
	image_blend = c_ltgray;
	draw_text(x, y, "Press E to \nTeleport to Spawn")
}
else 
{
	image_blend = -1;
}