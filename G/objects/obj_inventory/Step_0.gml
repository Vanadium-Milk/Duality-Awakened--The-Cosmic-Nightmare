/// @description Inserte aquí la descripción
if(active){
	instance_deactivate_object(obj_cameraFixer);
}
else{
	instance_activate_object(obj_cameraFixer);
}

//Hide inventory
if(keyboard_check(vk_escape)){
	active = false;
}