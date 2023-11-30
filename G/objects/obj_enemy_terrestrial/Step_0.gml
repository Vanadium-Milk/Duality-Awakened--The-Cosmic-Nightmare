/// @description move towards props and player
target_entity = instance_nearest(x, y, obj_targeteable);

event_inherited();

//Create a path towards the player and follow it
if mp_grid_path(enemy.obstacle_grid, path, x, y, target_x, target_y, true)
{
	path_start(path, step, path_action_continue, false);
}

//Reduce speed if it's touching a barrier
if(place_meeting(x, y, obj_barrier)){
	scr_enemy_take_damage(self, .05);

	if(step >= enemy.mov_speed){
		step /= 5; //Spike barriers also reduce the speed
	}
}

else if(!stunned){
	step = enemy.mov_speed;
}