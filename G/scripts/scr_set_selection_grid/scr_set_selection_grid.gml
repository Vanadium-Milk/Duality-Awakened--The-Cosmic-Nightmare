///@description Set the given variables to the row and colum index of a grid based on cursor position.

///@param {real} left The left corner of the button grid.
///@param {real} top The top corner of the button grid.
///@param {real} rows The amount of button rows in the grid.
///@param {real} cols The amount of button columns in the grid.
///@param {real} button_w The width of each button.
///@param {real} button_h The height of each button.
///@param {string} pointer_x The name of the variable for the horizontal pointer
///@param {string} pointer_y The name of the variable for the vertical pointer

function scr_get_selection_grid(left, top, rows, cols, button_w, button_h, pointer_x, pointer_y){
	var mouse_gui_x = window_mouse_get_x()/2;
	var mouse_gui_y = window_mouse_get_y()/2;
	
	if(point_in_rectangle(mouse_gui_x, mouse_gui_y, left, top, left + (cols * button_w) - 1, top + (rows * button_h) - 1)){

		variable_instance_set(self, pointer_x, floor((mouse_gui_x - left)/button_w));
		variable_instance_set(self, pointer_y, floor((mouse_gui_y - top)/button_h));
	}
}