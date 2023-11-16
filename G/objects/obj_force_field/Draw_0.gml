/// @description Drawing object
draw_set_alpha(.2);
draw_ellipse_color(x - shield_size, y - (shield_size * .6), x + shield_size, y + (shield_size * .6), c_aqua, c_aqua, false);
draw_set_alpha(1);

draw_self();