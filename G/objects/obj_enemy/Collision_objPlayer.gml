///@description deal damage
obj_HPBar.chealth -= enemy.damage; // Resta 10 puntos de vida (ajusta según tu juego)
    
if (obj_HPBar.chealth <= 0) {
    // El jugador ha perdido el juego
    game_restart(); // Llama a una función que maneje la derrota del jugador
	room_goto_next();
}