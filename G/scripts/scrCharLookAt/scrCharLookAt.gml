function scrCharLookAt(){
	var looking = point_direction(x,y,mouse_x,mouse_y); //Gets the angle from the center of the window to the cursor
	
	if(looking >= 315 || looking < 135){ //Search and bound out of 4 results based on the angle
		if(looking <= 45 || looking > 315){
			face = "R";
		}
		else {
			face = "U";
		}
	}
	else {
		if (looking <= 225){
			face = "L";
		}
		else {
			face = "D";
		}
	}
	
	sprite_index = asset_get_index("sprPlayer" + action + face); //updates the sprite accordingly
}