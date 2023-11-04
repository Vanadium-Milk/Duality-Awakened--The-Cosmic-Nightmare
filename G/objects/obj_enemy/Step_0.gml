/// @description Follow player
var player = inst_Player;

direction = point_direction(x, y, player.x, player.y);

// Voltea el sprite del enemigo según la dirección
sprite_index = asset_get_index(enemy.sprite + action + scrGetFace(player.x,player.y));