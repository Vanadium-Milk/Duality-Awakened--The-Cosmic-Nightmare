/// @description Insert description here
// You can write your code in this editor


    objSystem.playerHP -= 0.01; // Resta 10 puntos de vida (ajusta según tu juego)
    
    if (objSystem.playerHP = 0) {
        // El jugador ha perdido el juego
        game_restart(); // Llama a una función que maneje la derrota del jugador
	 room_goto_next();

	}
audio_play_sound(dolor, 2, false);


