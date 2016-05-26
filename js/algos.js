// create array variables 
// find the length of each word in the array
// sort through the array for the vairable with the longest length



var array = ["long phrase", "longer phrase", "longest phrase"];



var length = 0
var longest;


for (var i = 0; i < array.length; i++) {
	if(array[i].length > length){
		var length = array[i].length;
		longest = array[i];
	}
}

console.log(longest);

// var array.each do |phrase| 
// 	phraseLengths = phrase.length
// console.log(phraseLengths)
// end
