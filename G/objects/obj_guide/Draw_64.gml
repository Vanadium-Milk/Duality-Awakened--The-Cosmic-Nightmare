///@description Draw the interface
if(paused){
	//background image
	draw_sprite_stretched(spr_splash_art, 0, 0, 0, display_get_gui_width(), sprite_get_height(spr_splash_art) * display_get_gui_width() / sprite_get_width(spr_splash_art));
	
	//Guide
	draw_sprite(spr_ui_frame_guide,0,display_get_gui_width()/2,display_get_gui_height()/2);
	
	//Tabs
	draw_sprite(spr_ui_frame_tab,1,display_get_gui_width()/2 - 122, display_get_gui_height()/2 - 159);
	draw_sprite(spr_ui_frame_tab,0,display_get_gui_width()/2 - 46, display_get_gui_height()/2 - 159);
	draw_sprite(spr_ui_frame_tab,0,display_get_gui_width()/2 + 30, display_get_gui_height()/2 - 159);
	
	draw_set_font(fnt_small);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2 - 122, display_get_gui_height()/2 - 152, "ENEMIES")
	draw_text(display_get_gui_width()/2 - 46, display_get_gui_height()/2 - 152, "PROPS")
	draw_text(display_get_gui_width()/2 + 30, display_get_gui_height()/2 - 152, "EQUIPMENT")
	
	//Showcase selected tab
	
}