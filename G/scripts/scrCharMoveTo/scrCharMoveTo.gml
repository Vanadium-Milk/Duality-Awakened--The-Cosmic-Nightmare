function scrCharMoveTo(spd, dir){
	for (var angle=0;angle<90;angle+=10){
		for (var multiplier=-1;multiplier<=1;multiplier+=2) {
			var newDir = dir + angle * multiplier;
			var xTo = (x + lengthdir_x(spd, newDir));
			var yTo = (y + lengthdir_y(spd, newDir));
	
			if (!place_meeting(xTo,yTo,obj_solid)) {
				x = xTo;
				y = yTo;
				exit;
			}
		}
	}
}