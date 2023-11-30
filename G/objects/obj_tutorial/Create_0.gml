/// @description Start tutorial
if(!global.new_game || inst_Player.sandbox_mode){
	instance_destroy();
	exit;
}

obj_inventory.inventory[0] = [noone, 0];

tutorial = [
"PRESS WASD TO MOVE",
"LEFT-CLICK TO SHOOT",
"PRESS NUMBERS 1-8 TO USE ITEMS",
"LEFT-CLICK TO PLACE DOWN YOUR OUTPOST",
"OUTPOSTS ARE LIKE BASES FOR EACH STAGE",
"THEY REFILL YOUR AMMO & CRAFT YOUR ITEMS",
"PRESS E TO OPEN THE CRAFT MENU",
"LET'S MAKE A WIRE BARRICADE",
"COLLECT RESOURCES TO UPGRADE YOUR BASE!",
"GET READY!"
]
tutorial_step = 0;

scr_display_message(tutorial[0]);