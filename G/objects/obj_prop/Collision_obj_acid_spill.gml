/// @description Raster's acid damages the barrier
durability -= .1;

if(durability <= 0){
	instance_destroy();
}