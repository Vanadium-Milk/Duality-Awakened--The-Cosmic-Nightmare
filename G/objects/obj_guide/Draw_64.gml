///@description Draw the interface
if(paused){
	frame += .16
	//background image
	draw_sprite_stretched(spr_splash_art, 0, 0, 0, display_get_gui_width(), sprite_get_height(spr_splash_art) * display_get_gui_width() / sprite_get_width(spr_splash_art));
	
	//Guide
	draw_sprite(spr_ui_frame_guide,0,origin_x,origin_y);
	
	switch (selected){
		case(0): //enemies
			draw_sprite(spr_ui_frame_tab,1,origin_x - 122, origin_y - 159);
			draw_sprite(spr_ui_frame_tab,0,origin_x - 46, origin_y - 159);
			draw_sprite(spr_ui_frame_tab,0,origin_x + 30, origin_y - 159);
			
			grid_x = origin_x -186.5;
			grid_y = origin_y -127;
			rows = 10;
			cols = 9;
			cell_w = 28;
			cell_h = 28;
			
			//show only the enemies that already appeared
			for (var row = 0; row < rows; row ++){
				for(var col = 0; col < cols; col ++){
					var enemy_index = col + (row * 9);
					if(global.enemies[enemy_index].discovered){
						draw_sprite(spr_enemy_icon, enemy_index, grid_x + (col * cell_w), grid_y + (row * cell_h));
					}
					else{
						draw_sprite(spr_enemy_icon, 90, grid_x + (col * cell_w), grid_y + (row * cell_h));
					}
				}
			}
			
			//Darken the selected enemy
			draw_sprite_ext(spr_box, 0, grid_x + (sel_grid_x * cell_w), grid_y + (sel_grid_y * cell_h), 1, 1, 0, c_black, .5);
			
			//Show enemy attributes
			selection_index = sel_grid_x + (sel_grid_y * 9)
			if(global.enemies[selection_index].discovered){
				draw_sprite(global.enemies[selection_index].sprite, frame, origin_x + 135, origin_y - 90);
				
				draw_set_halign(fa_left);
				draw_set_font(fnt_small);
				draw_set_color(#dfdf45);
				
				draw_text(origin_x + 80, origin_y - 60, global.enemies[selection_index].name);
				draw_text(origin_x + 80, origin_y + 80, "DROPS:");
				
				draw_set_font(fnt_paragraph);
				draw_set_color(#b95fed);
				draw_set_valign(fa_top);
				draw_text_ext(origin_x + 80, origin_y - 58, global.enemies[selection_index].description, 10, 105);
				draw_set_valign(fa_bottom);
				
				for(var i = 0; i < array_length(global.enemies[selection_index].drops); i++){
					var sprite = global.enemies[selection_index].drops[i]
					draw_sprite(sprite, frame, origin_x + 80 + sprite_get_xoffset(sprite) + (i * 28), origin_y + 86 + sprite_get_yoffset(sprite));
				}
			}
			else{
				draw_sprite(spr_ui_question_mark, 0, origin_x + 135, origin_y - 120);
				
				draw_set_halign(fa_left);
				draw_set_font(fnt_small);
				draw_set_color(#dfdf45);
				
				draw_text(origin_x + 80, origin_y - 60, "UNKNOWN CREATURE");
			}
			
			break;
			
		case(1): //Props
			draw_sprite(spr_ui_frame_tab,0,origin_x - 122, origin_y - 159);
			draw_sprite(spr_ui_frame_tab,1,origin_x - 46, origin_y - 159);
			draw_sprite(spr_ui_frame_tab,0,origin_x + 30, origin_y - 159);
			
			grid_x = origin_x -178;
			grid_y = origin_y -121;
			rows = 10;
			cols = 8;
			cell_w = 28;
			cell_h = 26;
			
			for (var row = 0; row < rows; row ++){
				for(var col = 0; col < cols; col ++){
					var prop_index = col + (row * 8);
					if(global.props[prop_index].discovered){
						draw_sprite(spr_icon_prop, prop_index + 1, grid_x + (col * cell_w), grid_y + (row * cell_h));
					}
					else{
						draw_sprite(spr_icon_prop, 8, grid_x + (col * cell_w), grid_y + (row * cell_h));
					}
				}
			}
			
			//Darken the selected prop
			draw_sprite_ext(spr_icon_prop, 0, grid_x + (sel_grid_x * cell_w), grid_y + (sel_grid_y * cell_h), 1, 1, 0, c_black, .5);
			
			//Display prop information
			selection_index = sel_grid_x + (sel_grid_y * 8)
			if(global.props[selection_index].discovered){
				
				var sprite_name = global.props[selection_index].sprite_suffix;
				if(global.props[selection_index].orientable){sprite_name += "H"}
				
				var prop_spr = asset_get_index(sprite_name);
				
				draw_sprite(prop_spr, frame, origin_x + 135 - (sprite_get_width(prop_spr) / 2) + sprite_get_xoffset(prop_spr), origin_y - 90);
				
				draw_set_halign(fa_left);
				draw_set_font(fnt_small);
				draw_set_color(#dfdf45);
				
				draw_text(origin_x + 80, origin_y - 60, global.props[selection_index].name);
				draw_text(origin_x + 80, origin_y + 80, "COST:");
				
				draw_set_font(fnt_paragraph);
				draw_set_color(#b95fed);
				draw_set_valign(fa_top);
				draw_text_ext(origin_x + 80, origin_y - 58, global.props[selection_index].description, 10, 105);
				draw_set_valign(fa_bottom);
				
				for(var i = 0; i < array_length(global.props[selection_index].cost); i++){
					var sprite = global.props[selection_index].cost[i]
					draw_sprite(sprite, frame, origin_x + 80 + sprite_get_xoffset(sprite) + (i * 28), origin_y + 86 + sprite_get_yoffset(sprite));
				}
			}
			else{
				draw_sprite(spr_ui_question_mark, 0, origin_x + 135, origin_y - 120);
				
				draw_set_halign(fa_left);
				draw_set_font(fnt_small);	
				draw_set_color(#dfdf45);
				
				draw_text(origin_x + 80, origin_y - 60, "UNKNOWN ITEM");
			}
			
			break;
			
		case(2):
			draw_sprite(spr_ui_frame_tab,0,origin_x - 122, origin_y - 159);
			draw_sprite(spr_ui_frame_tab,0,origin_x - 46, origin_y - 159);
			draw_sprite(spr_ui_frame_tab,1,origin_x + 30, origin_y - 159);
			break;
	}
	draw_set_font(fnt_small);
	draw_set_halign(fa_center);
	draw_set_color(#dfdf45);
	
	draw_text(origin_x - 122, origin_y - 152, "ENEMIES")
	draw_text(origin_x - 46, origin_y - 152, "PROPS")
	draw_text(origin_x + 30, origin_y - 152, "EQUIPMENT")
	
	//DEBUGG TOOL show mouse  relative to origin
	//draw_text(window_mouse_get_x()/2, window_mouse_get_y()/2 + 15, string(window_mouse_get_x()/2 - origin_x) + ", " + string(window_mouse_get_y()/2 - origin_y));
}