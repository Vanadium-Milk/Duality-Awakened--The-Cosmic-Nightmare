/// @description Inserte aquí la descripción
if(type = "intro"){
	room_goto_next();
}
else{
	instance_create_layer(room_width/2, 512, "Instances", obj_restart_button);
}