/// @description mouse clicking
//shoot
if(tutorial_step = 1){
	tutorial_step = 2;
	obj_inventory.inventory[0] = [0, 1];
	scr_display_message(tutorial[tutorial_step]);
}

//Place down base
if(tutorial_step = 3 && instance_exists(obj_base)){
	tutorial_step = 4
	scr_display_message(tutorial[tutorial_step]);
	alarm[0] = 240;
}