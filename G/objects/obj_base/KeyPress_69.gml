/// @description Display crafting menu
if(nearby){
	instance_activate_object(obj_crafting_menu);
	obj_inventory.origin_x = display_get_gui_width()/2 + 172
	obj_inventory.active = true;
}