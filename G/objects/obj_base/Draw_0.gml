/// @description Show interaction dialogue

event_inherited();

if(nearby && inst_Player.pointed_prop == self){
	draw_sprite(spr_ui_small_container, 0, x + (sprite_width/2),  y + 8);
	
	draw_set_font(fnt_small);
	draw_set_halign(fa_center);
	draw_set_color(#dfdf45);
	
	draw_text(x + (sprite_width/2), y + 22, "CRAFT")
}