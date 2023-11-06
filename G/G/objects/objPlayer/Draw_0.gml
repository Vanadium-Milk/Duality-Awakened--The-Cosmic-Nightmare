draw_self(); // Dibuja el objeto de texto normalmente

// Obtén las coordenadas x e y del jugador
var jugador_x = objPlayer.x;
var jugador_y = objPlayer.y;

// Calcula la posición para mostrar la vida encima del jugador
var vida_x = jugador_x - string_width(string(objPlayer.vida)) / 2;
var vida_y = jugador_y - 50; // Ajusta la distancia vertical según tu preferencia

// Establece un tamaño de fuente más pequeño
draw_set_font(font_small); // "font_small" es el nombre de la fuente pequeña

// Muestra la vida en la posición calculada
draw_text(vida_x, vida_y, string(objPlayer.vida));

// Restaura el tamaño de fuente predeterminado
draw_set_font(font_default); // Restaura la fuente predeterminada
if (action != "Idle" && action != "Walk") { exit; }

if (guns[weapon.index] != noone) {
	var weaponScale = (weapon.angle >= 90 && weapon.angle < 270) ? -1 : 1;
	var weaponAngle = weapon.angle + ((weapon.angle >= 90 && weapon.angle < 270) ? 180 : 0);




	draw_sprite_ext(guns[weapon.index].sprite, 0, x, y - 4, weaponScale, 1, weaponAngle, c_white, 1);
}






