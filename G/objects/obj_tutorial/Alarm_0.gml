/// @description Autoscroll messages
tutorial_step += 1;
scr_display_message(tutorial[tutorial_step]);

if(tutorial_step == 4 || tutorial_step == 5){
	alarm[0] = 240;
}

if(tutorial_step == 9){
	scr_display_message(tutorial[tutorial_step], 4);
	spawn_system.alarm[0] = spawn_system.round_inbetween * 60;
	instance_destroy();
}