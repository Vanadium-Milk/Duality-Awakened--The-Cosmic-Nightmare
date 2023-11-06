/// @description Take acid damage
enemy.enemy_health -= .3;
scrPlayDmgAnimation(self);

if (enemy.enemy_health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
}