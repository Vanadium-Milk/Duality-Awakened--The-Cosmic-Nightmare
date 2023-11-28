/// @description Display/hide inventory
active = !active;
if(active){
	origin_x = display_get_gui_width()/2;
}
if(instance_exists(obj_crafting_menu)){
	instance_deactivate_object(obj_crafting_menu);
}