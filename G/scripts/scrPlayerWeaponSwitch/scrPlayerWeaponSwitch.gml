function scrPlayerWeaponSwitch(){
	if (mouse_wheel_down()) {
		weapon.index = 0;
	} else if (mouse_wheel_up()) {
		weapon.index = 1;
	}
}