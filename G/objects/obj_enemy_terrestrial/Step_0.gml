/// @description move towards target slowed down by barricades

var nearest_player = instance_nearest(x, y, obj_player);
var nearest_prop = instance_nearest(x, y, obj_prop_targeteable);

//check if there are props
if(nearest_prop){
	//If theres a prop 1.5 times closer than the player, the enemy targets it instead
	if(point_distance(x, y, nearest_prop.x, nearest_prop.y) * 1.5 < point_distance(x, y, nearest_player.x, nearest_player.y)){
		target_entity = nearest_prop;
	}
	else{
		target_entity = nearest_player;
	}
}
else {
	target_entity = nearest_player;
}
 
event_inherited();

//Create a path towards the player and follow it
if mp_grid_path(enemy.obstacle_grid, path, x, y, target_x, target_y, true)
{
	path_start(path, step, path_action_continue, false);
}

//Reduce speed if it's touching a barricade
if(place_meeting(x, y, obj_barrier)){
	scr_enemy_take_damage(,.05);

	if(step >= enemy.mov_speed){
		step /= 5; //Spike barriers also reduce the speed
	}
}

else if(!stunned){
	step = enemy.mov_speed;
}