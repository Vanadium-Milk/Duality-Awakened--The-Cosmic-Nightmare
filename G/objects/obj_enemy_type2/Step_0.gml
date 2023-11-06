 /// @description Insert description here
// You can write your code in this editor

var player = instance_nearest(x, y, objPlayer);

if (player) {
    var move_direction = point_direction(x, y, player.x, player.y);
    direction = move_direction;
    x += lengthdir_x(speed, move_direction);
    y += lengthdir_y(speed, move_direction);}
 







