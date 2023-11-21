// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_display_message(message_str){
	instance_activate_object(obj_interface_text);
	obj_interface_text.display_text = message_str;
	obj_interface_text.alarm[0] = 240;
}