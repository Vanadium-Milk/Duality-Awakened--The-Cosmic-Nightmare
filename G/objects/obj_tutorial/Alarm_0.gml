/// @description Autoscroll messages
tutorial_step += 1;
scr_display_message(tutorial[tutorial_step]);

if(tutorial_step == 4 || tutorial_step == 5){
	alarm[0] = 240;
}

if(tutorial_step == 9){
	scr_display_message(tutorial[tutorial_step], 4);
	spawn_system.alarm[0] = spawn_system.round_inbetween * 30;
	global.lvl_soundtrack = audio_play_sound(snd_room1, 0, true, 1);
	instance_destroy();
}