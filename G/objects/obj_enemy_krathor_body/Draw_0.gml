/// @description Inserte aquí la descripción

enemy.sprite = "spr_enemy_krathor_" + type;

event_inherited()

if(instance_exists(head) && instance_exists(leading)){
	image_angle = head.positions[|offset - 1]
}