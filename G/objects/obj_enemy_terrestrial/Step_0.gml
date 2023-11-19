/// @description move towards props and player
target_entity = instance_nearest(x, y, obj_targeteable);

event_inherited();

//Create a path towards the player and follow it
if mp_grid_path(enemy.obstacle_grid, path, x, y, target_x, target_y, true)
{
	path_start(path, step, path_action_continue, false);
}