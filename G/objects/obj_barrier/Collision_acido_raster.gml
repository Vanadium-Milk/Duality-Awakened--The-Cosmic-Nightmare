/// @description Raster's acid damage the barrier
durability -= .1;

if(durability <= 0){
	instance_destroy();
}