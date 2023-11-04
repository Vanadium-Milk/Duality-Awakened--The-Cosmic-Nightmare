action = "Idle";
face = "D";

guns = [noone, noone];

weapon = {
	index: 0,
	angle: 0,
	frequency: 0
};
 window_set_cursor(cr_none);
cursor_sprite=Sprite68;
rollDirection = 0;
audio_play_sound(room1, 1, true); // "snd_tu_musica" es el nombre de tu música
score += 0; // Puedes ajustar el valor (10) según lo que quieras que valga un enemigo eliminado.
furia=0;


