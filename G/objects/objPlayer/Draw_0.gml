///@description Sprite management
face = scrGetFaceAngle(pointing);

sprite_index = asset_get_index("sprPlayer" + action + face);
depth = -y

//Checks the direction and draws the weapon behind or in front of the character
if (face == "R" || face == "U"){
	if (guns[weapon.index] != noone && (action == "Idle" || action == "Walk")) { //ensures the weapon is only drawn when its eqquiped and not rolling
		
		//Draws the corresponding weapon to the current direction, using the attributes from the weapon object, for the direction it concatenates the name with the character face
		draw_sprite_ext(asset_get_index(guns[weapon.index].sprite + face), weapon.frames, x, y-25, 1, 1, pointing, c_white, 1);
	}
	
	event_inherited(); // Dibuja el objeto de texto normalmente	
}

else {
	//same code in different order
	event_inherited();

	if (guns[weapon.index] != noone && (action == "Idle" || action == "Walk")) {
		draw_sprite_ext(asset_get_index(guns[weapon.index].sprite + face), weapon.frames, x, y-25, 1, 1, pointing, c_white, 1);
	}
}

//Change the color of the flashing animation for shield or life
if (shield > 0){
	dmg_flash_color = #2635ff;
}
else{
	dmg_flash_color = c_red;
}


//Enter place prop mode
if(placing_prop = true){
	var prop_sprite_str = selected_prop.sprite_suffix;
	
	//Changing orientation
	if(selected_prop.orientable){
		if(face == "D" || face == "U"){
			prop_sprite_str += "H";
		}
		else{
			prop_sprite_str += "V";
		}
	}
	
	prop_sprite = asset_get_index(prop_sprite_str);
	
	prop_posx =  mouse_x;
	prop_posy =  mouse_y;

	//Limit the placing distance to 80
	if(point_distance(x, y - 16, prop_posx,prop_posy) >= 80){
		
		prop_posx = x + lengthdir_x(80,pointing);
		prop_posy = y - 16 + lengthdir_y(80,pointing);
	}
	
	//Fixing the prop in an imaginary 16x16 grid
	prop_posx = floor((prop_posx)/16)*16
	prop_posy = ceil((prop_posy)/16)*16
	
	//Check for collisions with anything
	var color = c_lime
	
	var collision = collision_rectangle(prop_posx + 1, prop_posy - sprite_get_bbox_bottom(prop_sprite) + sprite_get_bbox_top(prop_sprite), prop_posx + sprite_get_bbox_right(prop_sprite) - 1, prop_posy - 1,[obj_solid, obj_enemy, obj_entity, obj_prop, obj_acidlake],true,false)
	
	if(collision){
		
		color = c_red;
		valid_place = false;
	}
	
	else{
		valid_place = true;
	}
	
	//Visualize the prop to place
	draw_sprite_ext(prop_sprite, 0, prop_posx, prop_posy, 1, 1, 0, color, 1);
}