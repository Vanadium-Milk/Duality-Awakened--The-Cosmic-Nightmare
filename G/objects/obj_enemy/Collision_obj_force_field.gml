/// @description collide with force_field

//shrink shield
var collision = collision_point(x,y,obj_force_field, true, true);
if(collision){
	collision.shield_size -= enemy.damage / 3;
	
	var dir = point_direction(x, y, collision.x, collision.y);
	
	//Push back
	x -= lengthdir_x(20, dir);
	y -= lengthdir_y(20, dir);
	
	//Stun the enemies that touch the field
	step = 0;
	alarm[0] = 30
	
	//Reset shield cooldown
	collision.alarm[0] = 900;
}