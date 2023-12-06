/// @description Recieve damage from enemies
durability -= .03;

if(durability <= 0){
	instance_destroy();
}