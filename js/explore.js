//take a variable string as a parameter of a reverse function

// var str = "Georgia Rust"

// split that string into array, then reverse the array, and rejoin the string

//return the string

var store_string = reverse(str);

function reverse(str) { 
	return str.split('').reverse().join('')
}

var storeVar = reverse("hello");

if (storeVar.length > 0){
	consul.log(storeVar)
}