/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
    objSystem.playerHP -= 0.01; // Resta 10 puntos de vida (ajusta según tu juego)
   if (health_raster > 0) {
    health_raster -= 20; // Resta el daño al valor de vida
    if (health_raster <= 0) {
        var drop_item = instance_create_layer(x,y,"Instances_1",acido_raper);
		instance_destroy();// obj_drop_item es el nombre del objeto
    }
}


 
    if (objSystem.playerHP = 0) {
        // El jugador ha perdido el juego
        game_restart(); // Llama a una función que maneje la derrota del jugador
	 room_goto_next();

	}