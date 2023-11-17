// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrPlayerTakeDamage(damage){
	inst_Player.shield_cooldown = 600;
	
	if (inst_Player.shield >= 0){
		inst_Player.shield -= damage;
	}
	else {
		health -= damage; // Resta 10 puntos de vida (ajusta según tu juego)
	}
	scrPlayDmgAnimation(inst_Player);

	if (health <= 0) {
	    // El jugador ha perdido el juego
		time_source_destroy(time_source_game, true);
		with (all){
			instance_destroy();
		}
		
		room_goto_next();

	}

}