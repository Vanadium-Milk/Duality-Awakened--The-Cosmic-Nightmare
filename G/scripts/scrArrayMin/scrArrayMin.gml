// find the smallest element in the array
function scrArrayMin(array){
	var minimum = array[0];
	for(var i = 1; i< array_length(array); i++){
		if (array[i] < minimum){
			minimum = array[i];
		}
	}
	return minimum;
}