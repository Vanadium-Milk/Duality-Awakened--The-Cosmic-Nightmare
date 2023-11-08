/// @description Trigger next round
global.round += 1;

var Spawner = time_source_create(time_source_game,1,time_source_units_seconds,scrSpawnEnemy,[],power(global.round,2) + 10);
time_source_start(Spawner);