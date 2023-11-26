/// @description Place prop
if(placing_prop == true && valid_place){
	instance_create_depth(prop_posx, prop_posy, -prop_posy, selected_prop.object,{sprite_index: prop_sprite})
	if(selected_prop.object == obj_base){
		placing_prop = false;
	}
}