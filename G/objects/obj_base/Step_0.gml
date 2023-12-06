/// @description Inserte aquí la descripción
event_inherited()

if(nearby){
	//Refill ammunition
	var weapon_struct = inst_Player.guns[inst_Player.weapon.index]
	if(weapon_struct != noone){
		if(weapon_struct.ammo < weapon_struct.maxAmmo){
			weapon_struct.ammo += 1;
		}
	}
}