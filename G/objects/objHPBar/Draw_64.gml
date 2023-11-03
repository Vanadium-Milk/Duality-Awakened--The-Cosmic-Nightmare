/// @description Update life bar
draw_sprite_ext(sprUIHPFrame, 0, 0, 0, 1 , 1 , 0, c_white, 1);
draw_sprite_ext(Life_bar, floor(frames), (205 * objSystem.playerHP / objSystem.playerMaxHP) - 205, 5, 1, 1, 0, c_white, 1);