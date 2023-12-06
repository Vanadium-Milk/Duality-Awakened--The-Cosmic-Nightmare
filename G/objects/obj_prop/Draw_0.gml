/// @description Show durability
if(damageable){
	event_inherited();

	if(durability < max_durability){
		draw_healthbar(x + (sprite_width/2) - 8, y - sprite_height - 3, x + (sprite_width/2) + 8, y - sprite_height, durability / max_durability * 100, c_black, c_red, c_lime, 0 ,true , false);
	}
	
	if(nearby && inst_Player.pointed_prop == self){
		draw_sprite(spr_ui_small_container, 0, x + (sprite_width/2),  y + 8);
	
		draw_set_font(fnt_small);
		draw_set_halign(fa_left);
		draw_set_color(#dfdf45);
	
		draw_text(x + (sprite_width/2) - 24, y + 22, "REPAIR")
		
		var counter = 0;
		for(var i = 0; i < array_length(repair_cost); i++){
			for(var j = 0; j < repair_cost[i][1]; j++){
				draw_sprite_ext(global.resources[repair_cost[i][0]], 0, x + (sprite_width/2) + 20 + (counter * 8), y + 24,1,1,0,c_white,.8);
				counter += 1;
			}
		}
	}
}
else{
	//Does not inherit the damage animation
	if(shadow_size > 0){
		draw_set_alpha(.3);
		var centerx = x + (sprite_width/2) - sprite_get_xoffset(sprite_index);
		draw_ellipse_color(centerx - shadow_size, y - shadow_size*.6, centerx + shadow_size, y + shadow_size*.6, c_black, c_black, false)

		draw_set_alpha(1);
	}

	draw_self();
}