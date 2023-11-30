/// @description Start the next round once the time is over
time_source_destroy(time_source_game,true); //DON'T DELETE, for some reason it causes huge lag

global.round ++;

//Showing the round number
scr_display_message("ROUND " + string(global.round), 4);

//Creating spawn list
ds_list_clear(spawn_list);
for(var i = 0; i < 6; i++){
	var enemy = global.enemies[i]
	if(enemy.initial <= global.round){
		enemy.counter += random(2);
		//The probability is based on a negative cosine function tabulation.
		for(var spaces = 0; spaces < floor(((enemy.max_chance + 1) * (-cos(enemy.counter)) + (enemy.max_chance + 1)) / 2); spaces ++){
			ds_list_add(spawn_list, enemy.object);
		}
	}
}
if(ds_list_empty(spawn_list)){
	ds_list_add(spawn_list, obj_enemy_spiky);
}

alarm[1] = 30;