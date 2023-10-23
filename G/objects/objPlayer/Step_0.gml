 

switch (action) {
	case "Idle":
	case "Walk":
		scrPlayerMovement();
		scrPlayerWeaponUpdate();
		scrPlayerWeaponSwitch();
		scrPlayerCheckRoll();

		break;
		
	case "Roll":
		scrCharMoveTo(1.5, rollDirection);
		scrCharLookAt(rollDirection);
		break;
}
// Voltea el sprite hacia la dirección del mouse sin afectar el movimiento
var mouseX = mouse_x;
var myX =x;


if (mouseX >= myX)
{
    image_xscale =-1 
}
else
{
    image_xscale = 1; // Voltear horizontalmente}
}







