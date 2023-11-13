/// @description Inserte aquí la descripción
draw_sprite(spr_item_bar_frame,0,display_get_gui_width(),display_get_gui_height());
draw_sprite(spr_barrier_icon,0,display_get_gui_width()-234,display_get_gui_height()-1);

draw_set_halign(fa_right);
draw_set_font(fnt_small);
draw_text_color(display_get_gui_width()-204,display_get_gui_height() + 2,"5",c_white,c_white,c_white,c_white,1);