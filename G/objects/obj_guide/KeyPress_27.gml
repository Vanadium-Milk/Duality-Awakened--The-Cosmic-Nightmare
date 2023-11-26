/// @description Pause game
if(!inst_Player.placing_prop){
	if (!paused){
		paused = true;
		instance_deactivate_all(true);
		time_source_pause(time_source_game);
		
		//Set the positioning on center of the screen
		origin_x = display_get_gui_width()/2;
		origin_y = display_get_gui_height()/2;
	}
	else{
		paused = false;
		instance_activate_all();
		time_source_resume(time_source_game);
	}
}