///@description Sets the interface_text object to display the given string
///@param {string} message_str The text to display
///@param {real} duration The seconds the message will last (optional, message does not hide if omitted)

function scr_display_message(message_str, duration){
	obj_interface_text.display_text = message_str;
	
	if(duration != undefined){
		obj_interface_text.alarm[0] = duration * 60;
	}
}