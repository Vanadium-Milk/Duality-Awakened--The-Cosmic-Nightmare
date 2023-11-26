/// @description Skip dialogue
if(keyboard_check(vk_escape) || keyboard_check(vk_space) || keyboard_check(vk_enter)){
	event_perform(ev_other, ev_user0);
}