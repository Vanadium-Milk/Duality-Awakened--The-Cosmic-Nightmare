/// @description Next round
for (var i = 0; i < power(global.round,2) + 10; i++){ //spawns n^2 +10 random enemies
	instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Instances",scrChooseEnemy()); 
}