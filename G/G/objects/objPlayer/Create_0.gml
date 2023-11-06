event_inherited();
action = "Idle";
speed = 0;

guns = [noone, noone];

weapon = {
	index: 0,
	angle: 0,
	frequency: 0,
	frames: 0
};

health = 15;
max_health = 15;

window_set_cursor(cr_none);
cursor_sprite= aim_cursor;
rollDirection = 0;
audio_play_sound(room1, 1, true); // "snd_tu_musica" es el nombre de tu música
score += 0; // Puedes ajustar el valor (10) según lo que quieras que valga un enemigo eliminado.
furia=0;


