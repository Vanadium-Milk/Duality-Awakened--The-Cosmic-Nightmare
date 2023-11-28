/// @description Show interaction dialogue
//Cast shadow below
draw_set_alpha(.3);
var centerx = x + (sprite_width/2) - sprite_get_xoffset(sprite_index);
draw_ellipse_color(centerx - shadow_size, y - shadow_size*.6, centerx + shadow_size, y + shadow_size*.6, c_black, c_black, false)

draw_set_alpha(1);

draw_self();

if(nearby){
	draw_set_font(fnt_keys);
	draw_set_halign(fa_center)
	draw_set_color(#dfdf45);
	
	draw_text(x + 16, y + 34, "E");
}