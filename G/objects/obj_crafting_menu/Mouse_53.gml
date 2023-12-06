/// @description Inserte aquí la descripción
var mouse_gui_x = window_mouse_get_x()/2;
var mouse_gui_y = window_mouse_get_y()/2;

if(point_in_rectangle(mouse_gui_x, mouse_gui_y, list_x, list_y, list_x + 184, list_y + 191)){
	selected = floor((mouse_gui_y - list_y)/32);
}

// craft button clicked
else if(point_in_rectangle(mouse_gui_x, mouse_gui_y, origin_x + 50, origin_y + 145, origin_x + 155, origin_y + 167) && craftable){
	// check inventory for items of the same type
	for(var i = 0; i < 53; i++){
		if(obj_inventory.inventory[i][0] == selected + 1){
			obj_inventory.inventory[i][1] += 1;
			
			//Remove the materials from the inventory
			scr_subtract_resources(global.props[selected + 1].cost);
			
			audio_play_sound(snd_prop_craft, 4, false);
			exit;
		}
	}
	//find empty spaces
	for(var i = 0; i < 53; i++){
		if(obj_inventory.inventory[i][0] == noone){
			obj_inventory.inventory[i][0] = selected + 1;
			obj_inventory.inventory[i][1] += 1;
			
			//Remove the materials from the inventory
			scr_subtract_resources(global.props[selected + 1].cost);
			
			audio_play_sound(snd_prop_craft, 4, false);
			exit;
		}
	}
}