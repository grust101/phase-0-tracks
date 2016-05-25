// paired with Kaitlyn Adelaide


var colors = ["blue", "green", "white", "purple"];
var names = ["Bob", "Sam", "Jane", "Sarah"];

colors.push("pink");
names.push("Todd");

console.log(colors, names);

var horseColors = {};

for (var i = 0; i < colors.length; i++) {
	horseColors[names[i]] = colors[i];
}

console.log(horseColors);


function Car(color, year, americanMade) {
	console.log("This car: ", this);

	this.color = color;
	this.year = year; 
	this.americanMade = americanMade;

	this.zoom = function() {console.log("ZOOOOOM!");};

	console.log("CAR DESCRIPTION COMPLETE");
}

var testCar = new Car("black", 2007, true);
console.log(testCar);

testCar.zoom();



//If you wanted to loop through the keys and values of an object, how would you do that? 
//(There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)
// You'd want to use a For and then loop through each var object 
// var obj = objwithkeysandvalues[key];
// for (var value in obj) { do something to each 
	// console.log(value or whatever you want to see)
// }



//Are there advantages to using constructor functions to create objects? Disadvantages? 
// constructor methods are very narrow or not universal. They apply to one thing. 
// You can initialze objects using a contructor method = advantage
//
