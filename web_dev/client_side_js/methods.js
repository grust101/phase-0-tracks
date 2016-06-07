console.log("It's working");

function addBlackBorder(event) {
	console.log("It worked!!");
	console.log(event);
	event.target.style.border = "5px solid black";

}

var header = document.getElementsByTagName("h1") [0];
header.addEventListener("click", addBlackBorder);

// var photos = document.getElementsByTagName("img") [0];
// photos.style.border = "10px solid black";