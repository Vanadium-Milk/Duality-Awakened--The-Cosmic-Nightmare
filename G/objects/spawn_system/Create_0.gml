<<<<<<< Updated upstream
/// @description Generate first spawn set
for (var i = 0; i < 10; i++){ //spawns 10 random enemies
	 instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Instances",scrChooseEnemy()); 
}
=======
/// @description Start first round
spawn_x = 0;
spawn_y = 0;

global.round = 1;
event_user(0);
>>>>>>> Stashed changes
