/// @description Sprite management
event_inherited();

face = scrGetFace(inst_Player.x,inst_Player.y);
sprite_index = asset_get_index(enemy.sprite + action + face);