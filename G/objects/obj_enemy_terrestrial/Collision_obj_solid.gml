/// @description collide with obstacles
var probing_dist = 10// distance to the obstacle to check, adjust this to debbug

//Collision in X
if (position_meeting(x + probing_dist, y, obj_solid) != position_meeting(x - probing_dist, y, obj_solid)){
	x = xprevious;
	target_x = x;
}

//Collision in Y
if (position_meeting(x, y + probing_dist, obj_solid) != position_meeting(x, y - probing_dist, obj_solid)){
	y = yprevious;
	target_y = y;
}