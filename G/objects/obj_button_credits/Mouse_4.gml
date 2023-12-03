/// @description Inserte aquí la descripción
if(display_text == "CREDITS"){
	display_text = "BACK";

	instance_deactivate_all(true);
}
else{
	display_text = "CREDITS";
	instance_activate_all()
}