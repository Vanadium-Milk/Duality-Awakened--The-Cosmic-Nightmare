/// @description Detonation
var enemies_on_radius = ds_list_create();
var n_enemies = collision_circle_list(x, y, 60, [obj_enemy, obj_landmine, obj_player], false, true, enemies_on_radius, false);

for (var i = 0; i < n_enemies; i++){
	
	if(enemies_on_radius[|i].object_index == obj_landmine){
		scrTriggerLandmine(enemies_on_radius[|i]);
	}
	
	else if((enemies_on_radius[|i] == inst_Player)){
		scrPlayerTakeDamage(10);
	}
	
	else{
		scr_enemy_take_damage(enemies_on_radius[|i], 20);
	}
}

ds_list_destroy(enemies_on_radius);

instance_destroy();