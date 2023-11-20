// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrPlayerTakeDamage(damage){
	if(health > 0){
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
			inst_Player.action = "Dead";
			inst_Player.sprite_index = noone;
		    // El jugador ha perdido el juego
			time_source_destroy(time_source_game, true);
		
			//Play death animation
			layer_sequence_create("Sequences", inst_Player.x, inst_Player.y, seq_player_death);

			//show "darken" effect
			layer_set_visible("Mask", true);
		
			function bckg_animate(index) {
				var current = layer_background_get_alpha(index);
				layer_background_alpha(index, current + .00416)
			}
		
			var background = layer_background_get_id("Mask");
			var animation = time_source_create(time_source_game, 1, time_source_units_frames, bckg_animate, [background], 240);
			time_source_start(animation);
		
			//Go to restart screen
			function restart_game(){
				with (all){
					instance_destroy();
				}
		
				room_goto_next();
			}
			time_source_start(call_later(4, time_source_units_seconds, restart_game));
		
		}
	}
}