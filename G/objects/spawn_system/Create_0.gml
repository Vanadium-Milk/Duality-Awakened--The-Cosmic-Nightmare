/// @description Generate first spawn set
for (var i = 0; i < 10; i++){ //spawns 10 random enemies
	 instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Instances",scrChooseEnemy()); 
}