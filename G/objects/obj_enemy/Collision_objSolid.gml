/// @description collide with obstacles

var probing_dist = 10// distance to the obstacle to check, adjust this to debbug

//Collision in X
if (position_meeting(x + probing_dist, y, objSolid) != position_meeting(x - probing_dist, y, objSolid)){
	x = xprevious;
	target_x = x;
}

//Collision in Y
if (position_meeting(x, y + probing_dist, objSolid) != position_meeting(x, y - probing_dist, objSolid)){
	y = yprevious;
	target_y = y;
}