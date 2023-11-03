/// @description This algorithm places the fixer in a fraction of the line between the mouse cursor and the player

x = (mouse_x / 5) + (objPlayer.x * .8);
y = (mouse_y / 4 ) + ((objPlayer.y-25) * .75);
//The position is based on the equation 1/x mouseH + x-1/x playerH