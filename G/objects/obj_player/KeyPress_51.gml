/// @description Enter prop-placing mode
if(!placing_prop){
	placing_prop = true
	selected_prop = obj_landmine;
	weapon.index = 2;
}
else {
	placing_prop = false;
	selected_prop = noone;
	weapon.index = 0;
}