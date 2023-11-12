/// @description Draw text messages
draw_set_font(fnt_disclaimer);
draw_set_halign(fa_center);

draw_text_color((display_get_gui_width()/2)-5,(display_get_gui_height()/2) -145,display_text,$000000,$000000,$000000,$000000,.5);
draw_text_color((display_get_gui_width()/2),(display_get_gui_height()/2) -150,display_text,font_color,font_color,font_color,font_color,1);

//Hide text automatically 4 seconds after
var msg_duration = time_source_create(time_source_game,4,time_source_units_seconds,instance_deactivate_object,[self]);
if(time_source_get_state(msg_duration) != time_source_state_active){
	time_source_start(msg_duration);
}