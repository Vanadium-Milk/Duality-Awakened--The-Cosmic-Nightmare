//Returns a string indicating the direction it should be facing
function scrGetFace(targetx,targety){
	var looking = point_direction(x,y,targetx,targety); //Gets the angle from the center of the window to the cursor
	
	//Avoid changing face if there's no direction
	if(looking == 0){
		return face
	}
	
	// Selects a face based on the angle from multiples of 90, offset is 45 degrees
	faces = ["R","U","L","D","R"];
	return faces[floor((looking + 45)/90)];
}