/// @description Define parameters
global.round = 0; //starting round
round_inbetween = 20; //Seconds in between rounds

if(!instance_exists(obj_tutorial)){
	scr_display_message("GET READY!", 4);
	scr_play_music_queue();
	alarm[0] = round_inbetween * 30;
}

spawn_list = ds_list_create();

counter = 0;