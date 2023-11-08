/// @description Damage animation
draw_self();
if (ani_frame > -1){
	if(ani_frame >= global.curve_speed){
		ani_frame = -1;
		exit;
	}
	image_xscale = global.damagedSize[ani_frame];
	image_yscale = global.damagedSize[ani_frame];
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,dmg_flash_color, global.damagedColor[ani_frame]);
	
	ani_frame += 1;
}