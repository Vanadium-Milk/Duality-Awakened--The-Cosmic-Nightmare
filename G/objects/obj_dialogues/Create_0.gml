/// @description Set text
dialogues = [
["ALPHER...", "I HAVE TO FIND YOU...", "I MISS YOU"],
["ROSS", "YOU CAN'T GIVE UP", "FINISH THE MISSION...", "DO IT FOR ALPHER"],
["ROSS...", "YOU MAY FEEL LOST", "BUT YOU AREN'T", "YOU'VE NEVER BEEN"],
["ROSS", "WAKE UP", "IT'S NOT THE END YET"],
["ROSS?", "ROSS!", "CAN YOU HEAR ME?"]
]

if(type = "intro"){
	dialogue = dialogues[0];
}
else{
	dialogue = choose(dialogues[1], dialogues[2], dialogues[3], dialogues[4])
}

counter = 0;

phrase = 0;