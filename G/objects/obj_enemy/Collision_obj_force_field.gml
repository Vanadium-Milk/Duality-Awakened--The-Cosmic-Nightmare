/// @description collide with force_field

//shrink shield
var collision = instance_place(x,y,obj_force_field)
if(collision){
	collision.shield_size -= .05;
}

var probing_dist = 10// distance to the obstacle to check, adjust this to debbug

//Collision in X
if (position_meeting(x + probing_dist, y, obj_force_field) != position_meeting(x - probing_dist, y, obj_force_field)){
	x = xprevious;
	target_x = x;
}

//Collision in Y
if (position_meeting(x, y + probing_dist, obj_force_field) != position_meeting(x, y - probing_dist, obj_force_field)){
	y = yprevious;
	target_y = y;
}