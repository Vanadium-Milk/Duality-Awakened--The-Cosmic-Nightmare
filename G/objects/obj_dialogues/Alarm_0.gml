/// @description Switch phrase
if(phrase < array_length(dialogue) - 1){
	phrase ++;
	counter = 0;
}
else{
	event_perform(ev_other, ev_user0);
}
