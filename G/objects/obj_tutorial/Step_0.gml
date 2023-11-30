//Craft barricade
if(tutorial_step = 7 && obj_inventory.inventory[0][0] == 3){
	tutorial_step = 8;
	scr_display_message(tutorial[tutorial_step]);
	alarm[0] = 240;
}