// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrSpawnEnemy(){
	var spawn_x = 0;
	var spawn_y = 0;
	
	do{
		spawn_x = random(room_width);
		spawn_y = random(room_height);
	}
	until (position_empty(spawn_x,spawn_y))

	instance_create_layer(spawn_x,spawn_y,"Enemies",scrChooseEnemy());
}