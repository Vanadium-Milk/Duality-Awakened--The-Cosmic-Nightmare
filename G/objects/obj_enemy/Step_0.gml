/// @description Mark target position, check for health

target_x = target_entity.x;
target_y = target_entity.y;

if (enemy.enemy_health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
}