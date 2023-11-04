if (alarm[0] <= 0) {
    global.round += 1; // Incrementa el número de ronda
	instance_create_layer(1, 1,"Instances", obj_enemy_flyail);

}

// Restablece la alarma si es necesario para evitar repeticiones
if (global.round > 2) {
    alarm[0] = room_speed * 1;
	
}