 

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
if obj_enemy_type1.distancia_al_jugador < 400 {
    audio_play_sound(spiky, 1, false);
}
// Voltea el sprite hacia la dirección del mouse sin afectar el movimiento
var mouseX = mouse_x;
var myX = x;

if (mouseX > myX)
{
    image_xscale = 1; // Sin voltear
}
else
{
    image_xscale = -1; // Voltear horizontalmente
}







