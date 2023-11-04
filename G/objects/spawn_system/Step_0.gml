/// @description Round update
if(current_round != global.round){
	current_round = global.round;
	for (var i = 0; i < floor((power(current_round,2))/2) + 10; i++){ //spawns (n^2)/2 +10 random enemies
		instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Instances",scrChooseEnemy()); 
	}
}