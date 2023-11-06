/// @description Next round
for (var i = 0; i < power(global.round,2) + 10; i++){ //spawns n^2 +10 random enemies

	var enemy = scrChooseEnemy();
	do{
		spawn_x = random(room_width);
		spawn_y = random(room_height);
	}
	until (position_empty(spawn_x,spawn_y))

	instance_create_layer(spawn_x,spawn_y,"Enemies",enemy); 
  }