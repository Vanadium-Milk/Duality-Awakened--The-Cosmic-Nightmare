/// @description Place prop
if(placing_prop == true && valid_place){
	instance_create_layer(prop_posx, prop_posy, "Entities", selected_prop,{sprite_index: prop_sprite})
}