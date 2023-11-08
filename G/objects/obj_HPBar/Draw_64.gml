/// @description Update life bar
draw_sprite(sprUIHPFrame,0,0,0);
draw_sprite_ext(spr_life_bar, floor(frames), (205 * health / objPlayer.max_health) - 205, 5, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_shield_bar, floor(frames), (123 * objPlayer.shield / objPlayer.max_shield) - 123, 36, 1, 1, 0, c_white, 1);