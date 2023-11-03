function scrCharLookAt(){
	var looking = point_direction(x,y,mouse_x,mouse_y); //Gets the angle from the center of the window to the cursor
	
	// Selects a face based on the angle from multiples of 90, offset is 45 degrees
	faces = ["R","U","L","D","R"];
	face = faces[floor((looking + 45)/90)]
	
	sprite_index = asset_get_index("sprPlayer" + action + face); //updates the sprite accordingly
}