/// @description Inserte aquí la descripción
draw_set_font(fnt_small);
draw_set_halign(fa_center);
draw_set_color(c_white);

var str = string_copy(dialogue[phrase], 0, counter);

draw_text(origin_x, origin_y, str)

counter += 0.15

//If dialog is completed go to the next one
if(counter >= string_length(dialogue[phrase]) && alarm[0] = -1){
	alarm[0] = 120;
}