/// @description Show interaction dialogue
event_inherited();

if(point_distance(x + 16, y, inst_Player.x, inst_Player.y) < 60){
	draw_set_font(fnt_keys);
	draw_set_halign(fa_center)
	draw_set_color(#dfdf45);
	
	draw_text(x + 16, y + 34, "E");
}