/// @description Draw text messages
draw_set_font(fnt_disclaimer);
draw_set_halign(fa_center);

draw_text_color((display_get_gui_width()/2)-5, 47,display_text,c_black,c_black,c_black,c_black,.5);
draw_text((display_get_gui_width()/2), 42, display_text);