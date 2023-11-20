/// @description check collisions, self destruct
event_inherited();

colliding_shield = instance_place(x,y,obj_force_field);
if(!colliding_shield){
	step = enemy.mov_speed;
}

if(point_distance(x, y, inst_Player.x, inst_Player.y) < 150 && charge >= 3){
	instance_destroy();
}