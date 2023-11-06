/// @description Heal player
if(health < objPlayer.max_health){
	if(health + 8 < objPlayer.max_health){
		health += 8;
	}
	else {
		health = objPlayer.max_health;
	}
	instance_destroy();
}