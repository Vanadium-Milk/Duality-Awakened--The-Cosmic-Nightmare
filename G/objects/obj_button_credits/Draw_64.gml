/// @description Inserte aquí la descripción
draw_set_halign(fa_center);
draw_set_font(fnt_disclaimer);
draw_set_color(#dfdf45);

draw_text(x / room_width * display_get_gui_width(), (y / room_height * display_get_gui_height()) + 13, display_text);

if(display_text == "BACK"){
	draw_set_font(fnt_small);
	draw_set_valign(fa_top);
	
	draw_text_ext_color(display_get_gui_width() / 2 - 1, 14, "CREATED BY REDELOPERS \n\nGAME DESIGNER & CONCEPT ART \nLEAH CASTRO \n\n VISUAL ARTIST & ENEMY DESIGN \nKEVIN TORRES \n\nSTORY WRITTING \nLUCIANA MANRIQUEZ \n\nCODING \n ANTONIO SILVA & LEAH CASTRO \n\nPROJECT MANAGER \nURIEL SOTO", 16, 600, #320d47, #320d47, #320d47, #320d47, .5);
	
	draw_set_color(#dfdf45)
	draw_text_ext(display_get_gui_width() / 2, 13, "CREATED BY REDELOPERS \n\nGAME DESIGNER & CONCEPT ART \nLEAH CASTRO \n\n VISUAL ARTIST & ENEMY DESIGN \nKEVIN TORRES \n\nSTORY WRITTING \nLUCIANA MANRIQUEZ \n\nCODING \n ANTONIO SILVA & LEAH CASTRO \n\nPROJECT MANAGER \nURIEL SOTO", 16, 600);
	draw_set_valign(fa_bottom);
}