/// @description Enter prop-place mode
var keypress_num = string_digits(keyboard_lastchar)
if(string_length(keypress_num) > 0){
	var keypress_real = real(keypress_num)

	//Check if the pressed number is in the range
	if(keypress_real >= 1 && keypress_real <= 8){
		
		//If an object is alredy being placed down revert.
		if(placing_prop){placing_prop = false; weapon.index = 0; exit;}
		
		var inv_slot = obj_inventory.inventory[keypress_real - 1]
		var item_index = inv_slot[0]
		
		//Checks if the slot has an item in the first place
		if(item_index != noone){
			
			var item = global.props[item_index]
			
			//Uses the item accordingly
			if(item.placeable){
				selected_slot = keypress_real - 1;
				selected_prop = item;
				placing_prop = true;
			}
			else{
				item.effect();
				//decreases item quantity by 1
				inv_slot[1] --;
				
				if(inv_slot[1] <= 0){
					inv_slot[0] = noone;
				}
			}
		}
	}	
}