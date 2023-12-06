/// @description Inserte aquí la descripción
if(nearby && inst_Player.pointed_prop == self){
	if(scr_is_affordable(repair_cost)){
		scr_subtract_resources(repair_cost);
		durability = max_durability;
		inst_Player.pointed_prop = noone;
	}
}