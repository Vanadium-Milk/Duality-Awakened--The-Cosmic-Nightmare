/// @description Set origin
origin_x = display_get_gui_width()/2 - 164;
origin_y = display_get_gui_height()/2;

list_x = origin_x - 159;
list_y = origin_y - 166;

selected = 0;

instance_deactivate_object(self);

depth = -2;

frame = 0;

craftable = false;