// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrTriggerLandmine(instance){
	if (!instance.triggered){
		instance.alarm[0] = 10
		
		instance.triggered = true;
	}
}