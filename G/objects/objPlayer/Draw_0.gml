 draw_self(); // Dibuja el objeto de texto normalmente

// Obtén las coordenadas x e y del jugador
var jugador_x = objPlayer.x;
var jugador_y = objPlayer.y;

 

if (action != "Idle" && action != "Walk") { exit; }

if (guns[weapon.index] != noone) {
	var weaponScale = (weapon.angle >= 90 && weapon.angle < 270) ? -1 : 1;
	var weaponAngle = weapon.angle + ((weapon.angle >= 90 && weapon.angle < 270) ? 180 : 0);


	draw_sprite_ext(guns[weapon.index].sprite, 0, x, y-25, weaponScale, 1, weaponAngle, c_white, 1);
}






