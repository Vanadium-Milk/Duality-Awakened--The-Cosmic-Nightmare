//Checks the direction and draws the weapon behind or in front of the character
if (face == "R" || face == "U"){
	if (guns[weapon.index] != noone && (action == "Idle" || action == "Walk")) { //ensures the weapon is only drawn when its eqquiped and not rolling
		
		//Draws the corresponding weapon to the current direction, using the attributes from the weapon object, for the direction it concatenates the name with the character face
		draw_sprite_ext(asset_get_index(guns[weapon.index].sprite + face), weapon.frames, x, y-25, 1, 1, weapon.angle, c_white, 1);
	}
	
	event_inherited(); // Dibuja el objeto de texto normalmente	
}

else {
	//same code in different order
	event_inherited();

	if (guns[weapon.index] != noone && (action == "Idle" || action == "Walk")) {
		draw_sprite_ext(asset_get_index(guns[weapon.index].sprite + face), weapon.frames, x, y-25, 1, 1, weapon.angle, c_white, 1);
	}
}

// Obtén las coordenadas x e y del jugador
var jugador_x = objPlayer.x;
var jugador_y = objPlayer.y;