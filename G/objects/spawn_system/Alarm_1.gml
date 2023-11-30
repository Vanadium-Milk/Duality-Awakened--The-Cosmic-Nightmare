/// @description Spawn round^2 + 10 enemies
if(counter < power(global.round,2) + 10){
	counter ++;
	var spawn_x = 0;
	var spawn_y = 0;
	
	do{
		spawn_x = random_range(96, 1953);
		spawn_y = random_range(32, 2016);
	}
	//Enemies must spawn free of obstacles and away from player
	until (position_empty(spawn_x,spawn_y) && point_distance(spawn_x, spawn_y, inst_Player.x, inst_Player.y) > 600 && mp_grid_get_cell(global.grid_no_liquid, spawn_x div 32, spawn_y div 32) == 0)
	
	instance_create_layer(spawn_x,spawn_y,"Entities",spawn_list[|irandom(ds_list_size(spawn_list) - 1)]);
	
	alarm[1] = 30;
}
else{
	counter = 0;
}