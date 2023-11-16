/// @description Sprite management
event_inherited();

if(instance_exists(target_entity)){
	face = scrGetFace(target_entity.x, target_entity.y);
}

sprite_index = asset_get_index(enemy.sprite + action + face);