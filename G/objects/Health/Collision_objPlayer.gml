/// @description Heal player
if(obj_HPBar.chealth < obj_HPBar.max_health){
	if(obj_HPBar.chealth + 8 < obj_HPBar.max_health){
		obj_HPBar.chealth += 8;
	}
	else {
		obj_HPBar.chealth = obj_HPBar.max_health;
	}
	instance_destroy();
}