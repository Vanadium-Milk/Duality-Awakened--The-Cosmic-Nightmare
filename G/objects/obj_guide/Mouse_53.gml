/// @description Click on items
if(paused){
	var mouse_gui_x = window_mouse_get_x()/2 - origin_x;
	var mouse_gui_y = window_mouse_get_y()/2 - origin_y;
	
	//Get clicked tab
	if(point_in_rectangle(mouse_gui_x, mouse_gui_y, -162, -172, 71, -145)){
		selected = floor((mouse_gui_x + 162)/78);
	}
	
	scr_get_selection_grid(grid_x, grid_y, rows, cols, cell_w, cell_h, "sel_grid_x", "sel_grid_y");
	
}