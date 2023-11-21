/// @description Damage animation and shadow

//Cast shadow below
draw_set_alpha(.3);
var centerx = x + (sprite_width/2) - sprite_get_xoffset(sprite_index);
draw_ellipse_color(centerx - shadow_size, y - shadow_size*.6, centerx + shadow_size, y + shadow_size*.6, c_black, c_black, false)

draw_set_alpha(1);

//Animate damage
draw_self();
if (ani_frame > -1){
	if(ani_frame >= global.curve_speed){
		ani_frame = -1;
		exit;
	}
	image_xscale = global.damagedSize[ani_frame];
	image_yscale = global.damagedSize[ani_frame];
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,dmg_flash_color, global.damagedColor[ani_frame]);
	
	ani_frame += 1;
}