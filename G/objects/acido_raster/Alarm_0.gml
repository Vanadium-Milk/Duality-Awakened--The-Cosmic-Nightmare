/// @description Disapear
image_alpha -= .02;

if(image_alpha <= 0){
	instance_destroy();
}

alarm[0] = 1