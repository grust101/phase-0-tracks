society = {
	upper_class: {
		name_called: 'Rich People', 
		asset: {
			money: 1000000,
			cars: 5,
			plane: 2
		},
		quotes: [
			"Should we take the plane or the helicopter to the white party?",
			"I put some things on hold at Barney's"
		]
	},

	middle_class:{
		name_called: 'Normal People',
		asset: {
			money: 50000,
			cars: 1,
			plane: 0
		},
		quotes:[
			"Why is the wi-fi not working?",
			"Can we stop at target? I have a coupon for avocados and I want to make guac"
		]
	},

	lower_class: {
		name_called: "Poor People",
		asset: {
			money: 0,
			cars: 0,
			plane: 0
		},
		quotes: [
			"*holding sign* Honestly, I will use money to buy pot.",
			"Road trip gone wrong. Anything helps."]
	}
}

p society[:upper_class][:name_called].upcase
p society[:upper_class][:quotes].push("Whoever said money can't buy happiness has never been to Monte Carlo")
p society[:middle_class][:quotes][1]
p society[:lower_class][:asset]