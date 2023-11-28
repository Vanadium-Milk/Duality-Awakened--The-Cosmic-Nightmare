/// @description Inserte aquí la descripción
var mouse_gui_x = window_mouse_get_x()/2;
var mouse_gui_y = window_mouse_get_y()/2;

if(point_in_rectangle(mouse_gui_x, mouse_gui_y, list_x, list_y, list_x + 184, list_y + 191)){
	selected = floor((mouse_gui_y - list_y)/32);
}
else if(point_in_rectangle(mouse_gui_x, mouse_gui_y, origin_x + 50, origin_y + 145, origin_x + 155, origin_y + 167) && craftable){
	for(var i = 0; i < 45; i++){
		if(obj_inventory.hotbar[i][0] == noone || obj_inventory.hotbar[i][0] == selected + 1){
			obj_inventory.hotbar[i][0] = selected + 1;
			obj_inventory.hotbar[i][1] += 1;
			
			for(var j = 0; j < array_length(global.props[selected + 1].cost); j++){
				obj_inventory.resources[global.props[selected + 1].cost[j][0]] -= global.props[selected + 1].cost[j][1];
			}
				
			exit;
		}
	}
}