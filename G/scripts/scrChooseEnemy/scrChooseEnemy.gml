//Input here all the enemy objects to appear on the spawn list
function scrChooseEnemy(){
	
	//WIP, just add enemies with its number
	selector = irandom(10)
	
	switch (selector){
		case(0):
		return obj_enemy_spiky;
		case(1):
		return obj_enemy_spiky;
		case(2):
		return obj_enemy_spiky;
		case(3):
		return obj_enemy_spiky;
		case(4):
		return obj_enemy_spiky;
		case(5):
		return obj_enemy_flyail;
		case(6):
		return obj_enemy_flyail;
		case(7):
		return obj_enemy_flyail;
		case(8):
		return obj_enemy_raster;
		case(9):
		return obj_enemy_raster;
		case(10):
		return obj_enemy_krathor_head;
	}
}