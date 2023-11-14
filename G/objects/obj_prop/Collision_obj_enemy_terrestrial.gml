/// @description Take damage from contact
durability -= .03;

if(durability <= 0){
	instance_destroy();
}