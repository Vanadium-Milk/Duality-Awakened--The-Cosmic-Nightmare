/// @description Recieve damage from barrier
scr_enemy_take_damage(self, .05);

if(step >= enemy.mov_speed){
	step /= 4; //Spike barriers also reduce the speed
}

if(not instance_position(x,y,obj_barrier)){
	step = enemy.mov_speed;
}