/// @description Draw text messages
draw_set_font(fnt_disclaimer);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(#dfdf45);

draw_text_ext_color((display_get_gui_width()/2)-5, 37,display_text,30, 400, c_black,c_black,c_black,c_black,.5);
draw_text_ext((display_get_gui_width()/2), 32, display_text, 30, 400);

draw_set_valign(fa_bottom);