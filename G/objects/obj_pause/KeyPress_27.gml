/// @description Pause game
if (!paused){
	paused = true;
	instance_deactivate_all(true);
	time_source_pause(time_source_game);
}
else{
	paused = false;
	instance_activate_all();
	time_source_resume(time_source_game);
}