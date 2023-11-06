/// @description Pause game
if (!paused){
	paused = true;
	instance_deactivate_all(true);
}
else{
	instance_activate_all();
	paused = false;
}