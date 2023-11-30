/// @description Draw interface
frame += .16

draw_sprite(spr_ui_crafting_menu_frame, 0, origin_x, origin_y);

draw_set_font(fnt_paragraph);
draw_set_color(#b95fed);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var counter = 0;
for(var i = 1; i < 80; i++){
	if(global.props[i].discovered){
		var sprite_name = global.props[i].sprite_suffix;
		if(global.props[i].orientable){sprite_name += "H"}
		var prop_spr = asset_get_index(sprite_name);
		
		draw_sprite_part(prop_spr, 0, sprite_get_width(prop_spr)/2 - 16, sprite_get_height(prop_spr)/2 - 12, 32, 24, list_x + 24, list_y + 1 + (counter * 32));
		draw_text_ext(list_x + 60, list_y + 12 + (counter * 32), global.props[i].name, 10, 50);
		
		//Required resources icons
		for(var j = 0; j < array_length(global.props[i].cost); j++){
			draw_sprite(global.resources[global.props[i].cost[j][0]], 0, list_x + 138 + (j * 14), list_y + 22 + (counter * 32));
		}
		
		counter ++;
	}
}

//Darken the selected craft
draw_sprite_ext(spr_ui_frame_stripe, 0, list_x, list_y + (selected * 32), 1, 1, 0, c_black, .5);

//show attributes
var selected_craft = global.props[selected + 1]

var sprite_name = selected_craft.sprite_suffix;
if(selected_craft.orientable){sprite_name += "H"}
				
var prop_spr = asset_get_index(sprite_name);
				
draw_sprite(prop_spr, frame, origin_x + 105 - (sprite_get_width(prop_spr) / 2) + sprite_get_xoffset(prop_spr), origin_y - 105);
				
draw_set_halign(fa_left);
draw_set_font(fnt_paragraph);
draw_set_color(#b95fed);
draw_set_valign(fa_top);
draw_text_ext(origin_x + 50, origin_y - 73, selected_craft.description, 10, 105);
draw_set_valign(fa_bottom);
				
draw_set_font(fnt_small);
draw_set_color(#dfdf45);
				
draw_text(origin_x + 50, origin_y - 75, selected_craft.name);
draw_text(origin_x + 54, origin_y + 74, "COST:");
				
draw_set_halign(fa_center);
				
craftable = true;
for(var i = 0; i < array_length(selected_craft.cost); i++){
	var price = selected_craft.cost[i][1];
	var current = obj_inventory.resources[selected_craft.cost[i][0]];
	
	draw_sprite(global.resources[selected_craft.cost[i][0]], 0, origin_x + 74 + (i * 28), origin_y + 104);
	
	if(current < price && !inst_Player.sandbox_mode){
		draw_set_color(c_red);
		craftable *= false;
	}
	else{
		draw_set_color(c_lime);
	}
	
	draw_text(origin_x + 74 + (i * 28), origin_y + 108, string(current) + "/" + string(price));
}

draw_sprite(spr_ui_craft_button, 0, origin_x + 50, origin_y + 145);

if(!craftable){draw_sprite_ext(spr_ui_craft_button, 0, origin_x + 50, origin_y + 145, 1, 1, 0, c_black, 0.5);}

draw_set_halign(fa_left);

//draw_text(window_mouse_get_x()/2, window_mouse_get_y()/2 + 15, string(window_mouse_get_x()/2 - origin_x) + ", " + string(window_mouse_get_y()/2 - origin_y));