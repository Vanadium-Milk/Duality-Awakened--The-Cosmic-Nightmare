/// @description Shoot
if(tutorial_step = 1){
	tutorial_step = 2;
	scr_display_message(tutorial[tutorial_step]);
}

if(tutorial_step = 3 && !inst_Player.placing_prop){
	tutorial_step = 4
	scr_display_message(tutorial[tutorial_step]);
}