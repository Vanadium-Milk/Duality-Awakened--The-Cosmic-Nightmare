/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(inst_Player.shield < inst_Player.max_shield){
	inst_Player.shield = inst_Player.max_shield;
	instance_destroy();
}