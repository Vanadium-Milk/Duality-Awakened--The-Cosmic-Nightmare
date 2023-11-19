/// @description Change status to allow damage
event_inherited();

if(instance_exists(leading)){
	leading.type = "tail";
}