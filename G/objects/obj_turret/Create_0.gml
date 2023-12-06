/// @description Set attributes
event_inherited();

sprite_index = spr_turret_base
max_durability = 30;
durability = max_durability;

damageable = true;
interactable = true;

shadow_size = 10;

repair_cost = [[1,2]];

//Variables for the cannon
pointing = 0;
point_target = 0;

fire_rate = 10; //Steps needed to shoot a bullet
fire_rate_refresh = 0;

rot_axis_x = x + (sprite_width/2);
rot_axis_y = y - 19;

frame = 0;