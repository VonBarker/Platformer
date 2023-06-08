/// @desc Load Game
//Erase current game state
with(obj_Game) instance_destroy();
with(obj_Player) instance_destroy();
with(obj_HiddenCoin) instance_destroy();
with(obj_BasicEnemy) instance_destroy();
with(obj_ProjectileEnemy) instance_destroy();
with(obj_Boss) instance_destroy();
with(obj_Coin) instance_destroy();

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
			if(asset_get_index(_loadEntity.obj) = obj_Game)
			{
				key_up = _loadEntity.key_up;
				key_left = _loadEntity.key_left;
				key_down = _loadEntity.key_down;
				key_right = _loadEntity.key_right;
				key_jump = _loadEntity.key_jump;
				key_interact = _loadEntity.key_interact;
				key_MeleeAttack_Button1 = _loadEntity.key_MeleeAttack_Button1;
				key_BasicAttack = _loadEntity.key_BasicAttack;
				key_attack1 = _loadEntity.key_attack1;
				key_attack2 = _loadEntity.key_attack2;
				key_attack3 = _loadEntity.key_attack3;
				coins = _loadEntity.coins;
			}
			if(asset_get_index(_loadEntity.obj) = obj_Player)
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				hp = _loadEntity.hp;
				stamina = _loadEntity.stamina;
			}
			if(asset_get_index(_loadEntity.obj) = obj_HiddenCoin)
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
			}
			//Enemies
			if(asset_get_index(_loadEntity.obj) = obj_BasicEnemy)
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				hp = _loadEntity.hp;
			}
			if(asset_get_index(_loadEntity.obj) = obj_ProjectileEnemy)
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				hp = _loadEntity.hp;
			}
			if(asset_get_index(_loadEntity.obj) = obj_Boss)
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				hp = _loadEntity.hp;
			}
		}
	}
	show_debug_message("Game Loaded!" + _string);
}





