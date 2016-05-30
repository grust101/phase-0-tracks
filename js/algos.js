// create array variables 
// find the length of each word in the array
// sort through the array for the vairable with the longest length


// create array variables 
var array = ["abc", "abcdefg", "abcde"];


// create a length variable to compare other lengths to
var length = 0

//create a longest variable that will be assigned to the longest phase
var longest;

// find the length of each word in the array
for (var i = 0; i < array.length; i++) {
	
// if the length of each item in the array is longer than 0, apply it to the length varriable
	if(array[i].length > length){
		var length = array[i].length;
// reassign the phrase  with the longest length to the longest var
		longest = array[i];
	}
}

// print the longest var
console.log(longest);

var input1 = { name: "Steven", age: "54"};
var input2 = { name: "Tamir", age: "54"};



function shared_var(input1, input2){
	for (var key in input1) {
		if (input2.hasOwnProperty(key)) {
			if (input1[key] == input2[key]) return true; 

		}
	}
	return false
}

console.log(shared_var(input1, input2))
