/// @description Start the next round once the time is over
time_source_destroy(time_source_game,true); //DON'T DELETE, for some reason it causes huge lag

global.round += 1;

//Showing the round number
scr_display_message("ROUND " + string(global.round));

//Spawning the actual enemies
function scrSpawnRandomEnemy(){
	var spawn_x = 0;
	var spawn_y = 0;
	
	do{
		spawn_x = random(room_width);
		spawn_y = random(room_height);
	}
	//Enemies must spawn free of obstacles and away from player
	until (position_empty(spawn_x,spawn_y) && point_distance(spawn_x, spawn_y, inst_Player.x, inst_Player.y) > 600 && mp_grid_get_cell(global.grid_no_liquid, spawn_x div 32, spawn_y div 32) == 0)
	
	instance_create_layer(spawn_x,spawn_y,"Entities",scrChooseEnemy());
}

//You can change how many enemies per round it should spawn, here's n^2 + 10
var spawner = time_source_create(time_source_game,.5,time_source_units_seconds,scrSpawnRandomEnemy,[], power(global.round,2) + 10);
time_source_start(spawner);