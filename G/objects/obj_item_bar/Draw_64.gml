/// @description Inserte aquí la descripción
//Frame
draw_sprite(spr_item_bar_frame,0,display_get_gui_width(),display_get_gui_height());

//Prop icons
draw_sprite(spr_thumbnail_barrier,0,display_get_gui_width()-234,display_get_gui_height()-1);
draw_sprite(spr_thumbnail_turret,0,display_get_gui_width()-206,display_get_gui_height()-1);
draw_sprite(spr_thumbnail_landmine, 0, display_get_gui_width()-178, display_get_gui_height()-1);

//Text beneath thumbails
draw_set_halign(fa_right);
draw_set_font(fnt_small);

draw_text_color(display_get_gui_width()-204,display_get_gui_height() + 2,"1",c_white,c_white,c_white,c_white,1);
draw_text_color(display_get_gui_width()-176,display_get_gui_height() + 2,"2",c_white,c_white,c_white,c_white,1);
draw_text_color(display_get_gui_width()-148,display_get_gui_height() + 2,"3",c_white,c_white,c_white,c_white,1);