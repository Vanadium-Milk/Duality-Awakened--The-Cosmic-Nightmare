/// @description Adjusting behavior based on current room
display_set_gui_size(display_get_width()/2, display_get_height()/2); 

if(room == rm_start_screen){
	type = "intro";
}
else if(room = rm_restart_screen){
	type = "restart";
}

logo_y = 0;