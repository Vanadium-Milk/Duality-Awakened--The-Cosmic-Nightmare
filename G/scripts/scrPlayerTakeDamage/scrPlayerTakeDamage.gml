// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrPlayerTakeDamage(damage){
	inst_Player.shield_cooldown = 600;
	
	if (inst_Player.shield < damage){
		damage -= inst_Player.shield;
		inst_Player.shield = 0;
		health -= damage;
	}
	else {
		inst_Player.shield -= damage;
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