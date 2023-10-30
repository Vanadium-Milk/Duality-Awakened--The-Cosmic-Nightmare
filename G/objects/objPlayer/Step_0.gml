 

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

if (mouse_check_button_pressed(mb_left)) {
     window_set_cursor(cr_none);
cursor_sprite=Sprite68;
} else {
    // El botón izquierdo del mouse no está siendo presionado.
    // Aquí puedes ocultar el objeto que mostraste antes, si es necesario.
  window_set_cursor(cr_none);
cursor_sprite=Sprite69;
}





