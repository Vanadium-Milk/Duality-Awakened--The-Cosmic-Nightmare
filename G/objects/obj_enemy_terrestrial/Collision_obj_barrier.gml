/// @description Recieve damage from barrier
enemy.enemy_health -= .05;
speed = enemy.mov_speed * 0.25; //Spike barriers also reduce the speed
scrPlayDmgAnimation(self);

if (enemy.enemy_health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
}
if(not instance_position(x,y,obj_barrier)){
	speed = enemy.mov_speed;
}