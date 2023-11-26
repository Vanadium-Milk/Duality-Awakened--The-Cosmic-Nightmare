/// @description Draw and update
if(spawn_system.alarm[0] > 0){
	display_text = string(ceil(spawn_system.alarm[0] / 60));
}

else{
	display_text = "ROUND " + string(global.round);
}

draw_set_font(fnt_small);
draw_set_halign(fa_right);
draw_set_color(#454edf);

draw_sprite(spr_UIroundInfoFrame,0,display_get_gui_width(),0);
draw_text(display_get_gui_width() - 2,90,display_text);
draw_text(display_get_gui_width() - 4,17, "FPS: " + string(fps));