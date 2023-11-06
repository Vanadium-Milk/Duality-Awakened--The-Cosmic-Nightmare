 /// @description Insert description here
// You can write your code in this editor

distancia_al_jugador = point_distance(x, y, objPlayer.x, objPlayer.y);

var player = instance_nearest(x, y, objPlayer);

if (player) {
    var move_direction = point_direction(x, y, player.x, player.y);
    direction = move_direction;
    x += lengthdir_x(speed, move_direction);
    y += lengthdir_y(speed, move_direction);}

// Encuentra la dirección hacia el jugador
var dir = point_direction(x, y, objPlayer.y, objPlayer.x);

// Voltea el sprite del enemigo según la dirección
image_xscale = sign(x-objPlayer.x);







