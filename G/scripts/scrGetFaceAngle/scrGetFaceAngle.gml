function scrGetFaceAngle(p_direction){
	// Selects a face based on the angle from multiples of 90, offset is 45 degrees
	faces = ["R","U","L","D","R"];
	
	return faces[floor((p_direction + 45)/90)];
}