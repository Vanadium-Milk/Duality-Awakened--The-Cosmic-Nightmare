///@description Return true if the player can afford the cost, otherwise false
///@param {Array} cost_array The specified resource cost

function scr_is_affordable(cost_array){
	var check_afford = function(_previous, _current, _index){
		return _previous * (obj_inventory.resources[_current[0]] >= _current[1]);
	}
	
	if(inst_Player.sandbox_mode){
		return true;
	}
	else{
		return array_reduce(cost_array, check_afford, true);
	}
}