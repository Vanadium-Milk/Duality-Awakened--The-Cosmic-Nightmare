/// @description Press movement keys
if (tutorial_step = 0 && (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))){
	tutorial_step = 1;
	scr_display_message(tutorial[tutorial_step]);
}

if(tutorial_step = 2 && keyboard_check(ord("1"))){
	tutorial_step = 3;
	scr_display_message(tutorial[tutorial_step]);
}

if(tutorial_step = 4 && keyboard_check(ord("E")) && point_distance(obj_base.x + 16, obj_base.y, inst_Player.x, inst_Player.y) < 60){
	scr_display_message(tutorial[5], 4);
	spawn_system.alarm[0] = spawn_system.round_inbetween * 60;
	instance_destroy();
}