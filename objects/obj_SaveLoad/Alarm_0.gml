/// @desc Save Game
//Make save array
var  _saveData = array_create(0);

//For each instance, create a struct and add it to the array
with(obj_Player)
{
	var _saveEntity =
	{
		obj : object_get_name(object_index),
		y : y,
		x : x,
		hp : hp,
		stamina : stamina
	}
	array_push(_saveData, _saveEntity);
}

//Turn data into a JSON string and save with buffer
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);

show_debug_message("Game Saved!" + _string);