///@description deal damage
health -= enemy.damage; // Resta 10 puntos de vida (ajusta según tu juego)
scrPlayDmgAnimation(inst_Player); //Start damage animation
    
if (health <= 0) {
    // El jugador ha perdido el juego
    game_restart(); // Llama a una función que maneje la derrota del jugador
	room_goto_next();
}