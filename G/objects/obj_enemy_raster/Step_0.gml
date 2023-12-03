/// @description Swim in it's own acid.
event_inherited();

if(instance_position(x, y, obj_acid_spill)){
	action = "Swim";
}
else {
	action = "Walk";
}