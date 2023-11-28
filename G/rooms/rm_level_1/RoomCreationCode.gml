//Interface defaults
view_wport[0] = display_get_width();
view_hport[0] = display_get_height();

camera_set_view_size(view_camera[0], view_wport[0]/2, view_hport[0]/2);

//Randomize seed
randomise();


global.new_game = false;

//animation curves pre-procesing
animation_size = animcurve_get_channel(ani_damageExpand,0);
animation_color = animcurve_get_channel(ani_colorChange,2);

global.curve_speed = 20; //number of frames to divide the animation curve
global.damagedSize = [];
global.damagedColor = [];

for(var i = 0; i < global.curve_speed; i++){
	global.damagedSize[i] = animcurve_channel_evaluate(animation_size,i/global.curve_speed);
	global.damagedColor[i] = animcurve_channel_evaluate(animation_color,i/global.curve_speed);
}

//motion planning grids
global.grid = mp_grid_create(0, 0, 64, 64, 32, 32);
mp_grid_add_instances(global.grid, obj_solid, false);

global.grid_no_liquid = mp_grid_create(0, 0, 64, 64, 32, 32);
mp_grid_add_instances(global.grid_no_liquid, obj_environment, true);