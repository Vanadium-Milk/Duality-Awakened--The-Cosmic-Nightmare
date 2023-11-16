/// @description Detonation
var enemies_on_radius = ds_list_create();
var n_enemies = collision_circle_list(x, y, 60, [obj_enemy, obj_landmine], false, true, enemies_on_radius, false);

for (var i = 0; i < n_enemies; i++){
	
	if(enemies_on_radius[|i].object_index == obj_landmine){
		scrTriggerLandmine(enemies_on_radius[|i]);
	}
	
	else{
		enemies_on_radius[|i].enemy.enemy_health =- 20;
	}
}

ds_list_destroy(enemies_on_radius);

instance_destroy();