/// @description take damage from acid lakes
health -= .2; // Resta 10 puntos de vida (ajusta según tu juego)
scrPlayDmgAnimation(self);

if (health <= 0) {
    // El jugador ha perdido el juego
    game_restart(); // Llama a una función que maneje la derrota del jugador
	room_goto_next();

}