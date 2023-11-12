/// @description Start the next round
time_source_destroy(time_source_game,true)

global.round += 1;

instance_activate_object(obj_interface_text);
obj_interface_text.display_text = "ROUND " + string(global.round);
	
function scrSpawnRandomEnemy(){
	var spawn_x = 0;
	var spawn_y = 0;
	
	do{
		spawn_x = random(room_width);
		spawn_y = random(room_height);
	}
	until (position_empty(spawn_x,spawn_y))

	instance_create_layer(spawn_x,spawn_y,"Enemies",scrChooseEnemy());
}

var spawner = time_source_create(time_source_game,.2,time_source_units_seconds,scrSpawnRandomEnemy,[], power(global.round,2) + 10);
time_source_start(spawner);