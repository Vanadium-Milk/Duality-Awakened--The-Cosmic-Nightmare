// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_enemy_take_damage(enemy_instance, damage){
	scrPlayDmgAnimation(enemy_instance);
	enemy_instance.enemy.enemy_health -= damage;
	
	if (enemy_instance.enemy.enemy_health <= 0) { //If health goes 0 or below it dies
		instance_destroy(enemy_instance);
	}
}