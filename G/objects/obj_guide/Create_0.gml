/// @description Variable set
paused = false;

//selected tab
selected = 0;

//Selection of individual items
sel_grid_x = 0;
sel_grid_y = 0;
selection_index = 0;

//Anchor point of the guide
origin_x = display_get_gui_width()/2;
origin_y = display_get_gui_height()/2;

grid_x = origin_x;
grid_y = origin_y;
rows = 0;
cols = 0;
cell_w = 0;
cell_h = 0;

//sprite animation frame
frame = 0;