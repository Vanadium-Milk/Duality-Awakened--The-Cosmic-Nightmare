/// @description Controllin
switch (action) {
	case "Idle":
		break;
	case "Walk":
		scrPlayerMovement();
		scrPlayerWeaponUpdate();
		scrPlayerWeaponSwitch();
		scrPlayerCheckRoll();

		break;
		
	case "Roll":
		break;
}