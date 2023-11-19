/// @description Follow head
if (enemy.enemy_health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
}

if(instance_exists(head) && instance_exists(leading)){
	x = head.positions[|offset - 3];
	y = head.positions[|offset - 2];
}
else {
	instance_destroy();
}