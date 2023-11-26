/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign(fa_center);
draw_set_font(fnt_small);
draw_text(display_get_gui_width()/2, display_get_gui_height() - 25, "SCORE: " + string(score)); // Muestra la puntuación en la esquina superior izquierda
draw_text(display_get_gui_width()/2, display_get_gui_height() - 10, "ROUNDS SURVIVED: " + string(global.round - 1));
