/// @description Inserte aquí la descripción
if(point_distance(x + 16, y, inst_Player.x, inst_Player.y) < 60){
	nearby = true;
	
	//Refill ammunition
	var weapon_struct = inst_Player.guns[inst_Player.weapon.index]
	if(weapon_struct.ammo < weapon_struct.maxAmmo){
		weapon_struct.ammo += 1;
	}
}
else{ nearby = false;}