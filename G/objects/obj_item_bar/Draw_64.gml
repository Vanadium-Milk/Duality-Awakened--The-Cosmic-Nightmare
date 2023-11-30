/// @description Inserte aquí la descripción
//Frame
draw_sprite(spr_item_bar_frame,0,display_get_gui_width(),display_get_gui_height());

//Prop icons
draw_set_halign(fa_right);
draw_set_font(fnt_small);
draw_set_color(c_white);

for(var i= 0; i < 8; i++){
	var slot = obj_inventory.inventory[i];
	if(slot[0] != noone){
		draw_sprite(spr_icon_prop, slot[0] + 1, bar_x + (i * 28), bar_y);
		draw_text(bar_x + (i * 28) + 26, bar_y + 28, slot[1])
	}
	else{
		draw_sprite(spr_icon_prop, 0, bar_x + (i * 28), bar_y);
	}
}