/// @description Sprite management
event_inherited();

//Look at the direction of movement
face = scrGetFace((x*2) - xprevious, (y*2) - yprevious);
sprite_index = asset_get_index(enemy.sprite + action + face);