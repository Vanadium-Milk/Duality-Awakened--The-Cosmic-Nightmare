// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrPlayerTakeDamage(damage){

	if(health > 0){
		//Play a grunt sound
		if(!audio_is_playing(inst_Player.sound_effect)){
			inst_Player.sound_effect = audio_play_sound(choose(snd_grunt1, snd_grunt2, snd_grunt3, snd_grunt4, snd_grunt5), 6, false);
		}
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
			
			audio_stop_sound(inst_Player.sound_effect);
			audio_play_sound(choose(snd_death1, snd_death2, snd_death3), 6, false);
		
			//Play death animation
			layer_sequence_create("Sequences", inst_Player.x, inst_Player.y, seq_player_death);

			//show "darken" effect
			layer_set_visible("Mask", true);
			
			//Zoom in
			camera_set_view_size(view_camera[0], view_wport[0]/3, view_hport[0]/3);
			
			//fade out music
			audio_sound_gain(global.lvl_soundtrack, 0, 3000);
			
			//slowly darken the screen
			function bckg_animate(index) {
				var current = layer_background_get_alpha(index);
				layer_background_alpha(index, current + .00416)
			}
		
			var background = layer_background_get_id("Mask");
			time_source_start(time_source_create(time_source_game, 1, time_source_units_frames, bckg_animate, [background], 240));
		
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