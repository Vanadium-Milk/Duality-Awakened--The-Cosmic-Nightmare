///@description remove the materials specified in the array from the player inventory.
///@param {Array} cost_array The specified resource cost

function scr_subtract_resources(cost_array){
	var subtract = function(_element, _index){
		obj_inventory.resources[_element[0]] -= _element[1];
	}
	
	if(!inst_Player.sandbox_mode){
		array_foreach(cost_array, subtract);
	}
}