/// @description Inserte aquí la descripción
draw_set_font(fnt_small);
draw_set_halign(fa_center);
draw_set_color(c_white);

var str = string_copy(dialogue[phrase], 0, counter);

draw_text(display_get_gui_width()/2, display_get_gui_height()/2, str)

counter += 0.2
if(counter >= string_length(dialogue[phrase]) && alarm[0] = -1){
	alarm[0] = 90;
}