/// @description Select items

if(scr_get_selection_grid(origin_x - 19, origin_y - 163, 9, 5, 28, 28, "sel_x", "sel_y")){
	var temp_item = inventory[sel_x + (sel_y * 5) + 8]
	
	for(var i = 0; i < 8; i++){
		if(inventory[i][0] == noone){
			inventory[i] = temp_item;
			inventory[sel_x + (sel_y * 5) + 8] = [noone,0];
			exit;
		}
	}
}
if(scr_get_selection_grid(origin_x - 19, origin_y + 110, 2, 4, 28, 26, "sel_x", "sel_y")){
	show_debug_message("This is a test");
	var temp_item = inventory[sel_x + (sel_y * 4)]
	
	for(var i = 8; i < 45; i++){
		if(inventory[i][0] == noone){
			inventory[i] = temp_item;
			inventory[sel_x + (sel_y * 4)] = [noone,0];
			exit;
		}
	}
}