/// @description Spawn enemies with a time spacing
do{
	spawn_x = random(room_width);
	spawn_y = random(room_height);
}
until (position_empty(spawn_x,spawn_y))

instance_create_layer(spawn_x,spawn_y,"Enemies",scrChooseEnemy());
Enemy_count += 1;

if (Enemy_count < Enemy_cap){ //if the limit is not reached the event is restarted
	alarm[0] = 30;
}