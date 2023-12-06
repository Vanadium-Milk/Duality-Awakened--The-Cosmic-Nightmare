///@description recieve a determined amount of damage, animate damage, die if health is 0 or below.
///@param {Id.Instance} enemy_instance The instance to recieve the damage (optional, self if omitted).
///@param {real} damage The amount of damage to recieve.

function scr_enemy_take_damage(enemy_instance = self, damage){
	scrPlayDmgAnimation(enemy_instance);
	enemy_instance.enemy.enemy_health -= damage;
	
	if (enemy_instance.enemy.enemy_health <= 0) { //If health goes 0 or below it dies
		instance_destroy(enemy_instance);
	}
}