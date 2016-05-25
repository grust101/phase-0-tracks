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