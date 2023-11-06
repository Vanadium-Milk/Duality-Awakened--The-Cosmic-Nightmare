/// @description Update life bar
draw_sprite(sprUIHPFrame,0,0,0);
draw_sprite_ext(Life_bar, floor(frames), (205 * health / objPlayer.max_health) - 205, 5, 1, 1, 0, c_white, 1);