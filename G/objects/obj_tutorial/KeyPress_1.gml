/// @description Press movement keys

//Move
if (tutorial_step = 0 && (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))){
	tutorial_step = 1;
	scr_display_message(tutorial[tutorial_step]);
}

//Prepare placement
if(tutorial_step = 2 && keyboard_check(ord("1"))){
	tutorial_step = 3;
	scr_display_message(tutorial[tutorial_step]);
}

//Interact with base
if(tutorial_step = 6 && keyboard_check(ord("E")) && obj_base.nearby){
	obj_inventory.resources[0] = 2;
	tutorial_step = 7;
	scr_display_message(tutorial[tutorial_step]);
}

//Craft barricade
if(tutorial_step = 7 && obj_inventory.hotbar[0][0] == 3){
	tutorial_step = 8;
	scr_display_message(tutorial[tutorial_step]);
	alarm[0] = 240;
}