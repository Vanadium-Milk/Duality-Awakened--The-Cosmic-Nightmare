display_set_gui_size(683, 384);
window_set_fullscreen(true);
randomise(); //Randomize seed
audio_play_sound(room1, 1, true);

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