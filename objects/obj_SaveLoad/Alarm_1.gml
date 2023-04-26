/// @desc Load Game
//Erase current game state
with(obj_Player) instance_destroy();

if(file_exists("savedgame.save"))
{
	var _buffer = buffer_load("savedgame.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	while(array_length(_loadData) > 0)
	{
		var _loadEntity = array_pop(_loadData);
		with(instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj)))
		{
			x = _loadEntity.x;
			y = _loadEntity.y;
			hp = _loadEntity.hp;
			stamina = _loadEntity.stamina;
			coins = _loadEntity.coins;
		}
	}
	show_debug_message("Game Loaded!" + _string);
}





