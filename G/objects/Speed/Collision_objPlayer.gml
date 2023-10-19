/// @description Insert description here
// You can write your code in this editor


// Evento de colisión con el objeto del jugador en el "speed booster"
if (!speed_boost_active) {
    speed_boost_active = true;
    // Aplica el aumento de velocidad aquí
    var speed_boost_multiplier = 2; // Puedes ajustar esto según tus necesidades
    // Aplica el multiplicador de velocidad al objeto del jugador
    player_object.speed *= speed_boost_multiplier;
    
    // Establece un temporizador para desactivar el "speed booster" después de cierto tiempo
    speed_boost_timer = room_speed * 5; // Desactivar después de 5 segundos (ajusta el valor según tus necesidades)
}

// Desactivar el "speed booster" después de cierto tiempo
if (speed_boost_active) {
    speed_boost_timer -= 1;
    if (speed_boost_timer <= 0) {
        speed_boost_active = false;
        // Restablece la velocidad normal del jugador
        player_object.speed /= speed_boost_multiplier;
    }
}




