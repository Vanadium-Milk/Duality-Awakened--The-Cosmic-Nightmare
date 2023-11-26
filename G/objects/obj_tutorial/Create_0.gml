/// @description Start tutorial
if(!global.new_game){
	instance_destroy();
}

tutorial = [
"PRESS WASD TO MOVE",
"LEFT-CLICK TO SHOOT",
"PRESS NUMBERS 1-8 TO PLACE PROPS",
"NOW LEFT-CLICK TO PLACE YOUR BASE DOWN",
"PRESS E TO INTERACT WITH YOUR PROPS",
"GET READY!"
]
tutorial_step = 0;

scr_display_message(tutorial[0]);