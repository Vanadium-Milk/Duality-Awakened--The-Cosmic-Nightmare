/// @description Start the next round once the time is over
time_source_destroy(time_source_game,true); //DON'T DELETE, for some reason it causes huge lag

global.round ++;

//Showing the round number
scr_display_message("ROUND " + string(global.round), 4);

//Creating spawn list
ds_list_clear(spawn_list);

for(var i = 0; i < array_length(spawn_chances); i++){
	var enemy = spawn_chances[i]
	if(enemy.initial <= global.round){
		enemy.counter += random(2);
		for(var spaces = 0; spaces < floor(((enemy.max_chance + 1) * (-cos(enemy.counter)) + (enemy.max_chance + 1)) / 2); spaces ++){
			ds_list_add(spawn_list, enemy.enemy)
		}
	}
}
if(ds_list_empty(spawn_list)){
	ds_list_add(spawn_list, obj_enemy_spiky);
}


//Spawning the actual enemies
function scrSpawnRandomEnemy(chances_list){
	var spawn_x = 0;
	var spawn_y = 0;
	
	do{
		spawn_x = random(room_width);
		spawn_y = random(room_height);
	}
	//Enemies must spawn free of obstacles and away from player
	until (position_empty(spawn_x,spawn_y) && point_distance(spawn_x, spawn_y, inst_Player.x, inst_Player.y) > 600 && mp_grid_get_cell(global.grid_no_liquid, spawn_x div 32, spawn_y div 32) == 0)
	
	instance_create_layer(spawn_x,spawn_y,"Entities",chances_list[|irandom(ds_list_size(chances_list) - 1)]);
}

//You can change how many enemies per round it should spawn, here's n^2 + 10
var spawner = time_source_create(time_source_game,.5,time_source_units_seconds,scrSpawnRandomEnemy,[spawn_list], power(global.round,2) + 10);
time_source_start(spawner);