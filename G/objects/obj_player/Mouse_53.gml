/// @description Place prop
if(placing_prop == true && valid_place){
	instance_create_depth(prop_posx, prop_posy, -prop_posy, selected_prop.object, {sprite_index: prop_sprite})
	
	var inv_slot = obj_inventory.hotbar[selected_slot];
	inv_slot[1] --;
	if(inv_slot[1] <= 0){
		placing_prop = false;
		inv_slot[0] = noone;
		
	}
	audio_play_sound(snd_prop_build, 4, false)
}