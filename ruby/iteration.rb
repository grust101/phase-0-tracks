ingredients = [
	'dough',
	'tomato sauce',
	'cheese',
	'olives',
	'pepperoni'
	]

animal_colors = {
	frog: 'green',
	flamingo: 'pink',
	polar_bear: 'white',
	bird: 'blue'
}

ingredients.each do |ingredient|
	puts "#{ingredient}!!"
end

ingredients.map! do |ingredient|
	ingredient.reverse
end

puts ingredients

animal_colors.each do |animal, color|
	puts color.upcase
end

