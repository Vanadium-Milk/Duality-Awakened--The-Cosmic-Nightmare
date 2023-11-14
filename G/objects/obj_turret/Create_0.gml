/// @description Set attributes
sprite_index = spr_turret_base
max_durability = 30;
durability = max_durability;

sprite_suffix = "spr_turret_icon"
orientable = false;

depth = sprite_height - y - 15;

depth = -y + 8

pointing = 0;
point_target = 0;

fire_rate = 10; //Steps needed to shoot a bullet
fire_rate_refresh = 0;

rot_axis_x = x + (sprite_width/2);
rot_axis_y = y - 19;