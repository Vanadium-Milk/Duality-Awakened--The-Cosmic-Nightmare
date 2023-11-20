/// @description collide with force_field
if(step == enemy.mov_speed){
	step /= 2;
}
//shrink shield
if(colliding_shield){
	
	//energy steal
	if(alarm[1] == -1){
		alarm[1] = 90
	}
	
	//Reset shield cooldown
	colliding_shield.alarm[0] = 900;
}