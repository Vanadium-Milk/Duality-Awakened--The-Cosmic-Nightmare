/// @description detect distance and turn the pointer if is closer than other props.
if(point_distance(x, y, inst_Player.x, inst_Player.y) < 60 && interactable){
	nearby = true;

	if(damageable && (!scr_is_affordable(repair_cost) || durability >= max_durability)){
		exit;
	}

	if(!instance_exists(inst_Player.pointed_prop)){
		inst_Player.pointed_prop = self;
	}
	
	else if(point_distance(x, y, inst_Player.x, inst_Player.y) < point_distance(inst_Player.pointed_prop.x, inst_Player.pointed_prop.y, inst_Player.x, inst_Player.y)){
		inst_Player.pointed_prop = self;
	}
}
else{nearby = false;}