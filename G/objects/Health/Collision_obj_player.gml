/// @description Heal player
if(health < inst_Player.max_health){
	if(health + 8 < inst_Player.max_health){
		health += 8;
	}
	else {
		health = inst_Player.max_health;
	}
	instance_destroy();
}