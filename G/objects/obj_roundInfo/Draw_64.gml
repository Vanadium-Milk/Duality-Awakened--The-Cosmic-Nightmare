/// @description Draw and update
if(spawn_system.alarm[0] > 0){
	display_text = string(ceil(spawn_system.alarm[0] / 60));
}

else{
	display_text = "ROUND " + string(global.round);
}

draw_set_font(fnt_small);
draw_set_halign(fa_right);

draw_sprite(spr_UIroundInfoFrame,0,display_get_gui_width(),0);
draw_text_color(display_get_gui_width() - 2,90,display_text,color,color,color,color,1);
draw_text_color(display_get_gui_width() - 4,17, "FPS: " + string(fps),color,color,color,color,1);