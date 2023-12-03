/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign(fa_center);
draw_set_font(fnt_disclaimer);
draw_set_color(#dfdf45);

if(type == "restart"){
	draw_text(x / room_width * display_get_gui_width(), (y / room_height * display_get_gui_height()) + 13, "RESTART");
	
	draw_set_font(fnt_small);
	draw_text(display_get_gui_width()/2, display_get_gui_height() - 135, "SCORE: " + string(score)); // Muestra la puntuación en la esquina superior izquierda
	draw_text(display_get_gui_width()/2, display_get_gui_height() - 120, "ROUNDS SURVIVED: " + string(global.round - 1));
}
else if (type == "intro"){
	draw_text(x / room_width * display_get_gui_width(), (y / room_height * display_get_gui_height()) + 13, "PLAY");
	
	draw_sprite(spr_logo, 0, display_get_gui_width()/2, sin(logo_y)*10 + 120);
	
	logo_y += .01;
}