/// @description Replenish movement after being stunned
if (speed < enemy.mov_speed){
	speed += .1;
	
	alarm[0] = 5;
}
