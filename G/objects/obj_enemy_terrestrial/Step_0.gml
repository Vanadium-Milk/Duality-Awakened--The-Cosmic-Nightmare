/// @description Target props and player
target_entity = instance_nearest(x, y, obj_targeteable);

event_inherited();

mp_potential_step(target_x, target_y, step, false);