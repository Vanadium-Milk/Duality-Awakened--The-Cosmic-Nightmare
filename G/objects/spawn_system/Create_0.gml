/// @description Define parameters
global.round = 25; //starting round
round_inbetween = 10; //Seconds in between rounds

instance_activate_object(obj_interface_text);
obj_interface_text.display_text = "GET READY!";

alarm[0] = round_inbetween * 60; 