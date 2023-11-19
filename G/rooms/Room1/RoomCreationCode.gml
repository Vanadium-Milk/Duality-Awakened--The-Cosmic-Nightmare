//Interface defaults
display_set_gui_size(683, 384); 
draw_set_color(#dfdf45);
draw_set_valign(fa_bottom);

//audio model
audio_falloff_set_model(audio_falloff_inverse_distance_clamped);

window_set_fullscreen(true);
randomise(); //Randomize seed

//Uncomment the following to activate music
//audio_play_sound(room1, 1, true);

window_set_cursor(cr_none);
cursor_sprite= aim_cursor;

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