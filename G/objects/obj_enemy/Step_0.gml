/// @description Follow player
var player = inst_Player;
face = scrGetFace(player.x,player.y);

direction = point_direction(x, y, target_x, target_y);

target_x = player.x;
target_y = player.y;

// Voltea el sprite del enemigo según la dirección
sprite_index = asset_get_index(enemy.sprite + action + face);