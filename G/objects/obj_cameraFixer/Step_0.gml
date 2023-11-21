/// @description This algorithm places the fixer in a fraction of the line between the mouse cursor and the player

if(inst_Player.action != "Dead"){
	x = (mouse_x / 5) + (obj_player.x * .8);
	y = (mouse_y / 4 ) + ((obj_player.y-25) * .75);
	//The position is based on the equation 1/x mouseH + x-1/x playerH
}
else{
	x = inst_Player.x;
	y = inst_Player.y;
}