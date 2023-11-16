/// @description Follow player, check for health
direction = point_direction(x, y, target_x, target_y);

target_x = target_entity.x;
target_y = target_entity.y;

if (enemy.enemy_health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
}