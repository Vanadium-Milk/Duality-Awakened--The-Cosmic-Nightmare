/// @description Inserte aquí la descripción
if(active){
	draw_set_alpha(.5);
	draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);

	draw_sprite(spr_ui_inventory_frame, 0, origin_x, origin_y);
	
	draw_set_font(fnt_small);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	
	//Inventory slots
	slots_x = origin_x - 19;
	slots_y = origin_y - 163;
	
	for (var row = 0; row < 9; row ++){
		for(var col = 0; col < 5; col ++){
			var slot = inventory[col + (row * 5)];
			if(slot[0] != noone){
				draw_sprite(spr_box, slot[0] + 1, slots_x + (col * 28), slots_y + (row * 28));
				draw_text(slots_x + (col * 28) + 16, slots_y + (row * 28) + 26, slot[1])
			}
			else{
				draw_sprite(spr_box, 0, slots_x + (col * 28), slots_y + (row * 28));
			}
		}
	}
	
	//Hotbar slots
	hbar_x = slots_x;
	hbar_y = origin_y + 110;
	
	for (var row = 0; row < 2; row ++){
		for(var col = 0; col < 4; col ++){
			var slot = hotbar[col + (row * 4)];
			if(slot[0] != noone){
				draw_sprite(spr_icon_prop, slot[0] + 1, hbar_x + (col * 28), hbar_y + (row * 26));
				draw_text(hbar_x + (col * 28) + 24, hbar_y + (row * 28) + 28, slot[1])
			}
			else{
				draw_sprite(spr_icon_prop, 0, hbar_x + (col * 28), hbar_y + (row * 26));
			}
		}
	}
	
	resbar_x = origin_x + 140;
	resbar_y = origin_y - 134;
	
	//resources
	draw_set_halign(fa_right);
	
	for(var i = 0; i < array_length(resources); i++){
		draw_sprite(global.resources[i], 0, resbar_x, resbar_y + (i * 20));
		draw_text(resbar_x + 8, resbar_y + (i * 20) + 4, resources[i]);
	}
}