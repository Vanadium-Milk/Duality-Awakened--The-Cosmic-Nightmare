/// @description Set origin
origin_x = display_get_gui_width()/2;
origin_y = display_get_gui_height()/2;

sel_x = undefined;
sel_y = undefined;

slots_x = origin_x - 29;
slots_y = origin_y - 163;

hbar_x = slots_x;
hbar_y = origin_y + 110;

resbar_x = origin_x + 140;
resbar_y = origin_y - 134;

active = false;

depth = -1

resources = [0, 0, 0, 0, 0, 0]

//[index in the prop list, quantity]

//Inventory -------------------------------------------------------
inventory = [
[0, 1],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[1, 2],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
[noone, 0],
]