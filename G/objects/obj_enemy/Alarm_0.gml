/// @description Replenish movement after being stunned
if (step < enemy.mov_speed){
	step += .02;
	
	alarm[0] = 1;
}
else {
	step = enemy.mov_speed;
}