# 5.4 
# Will Friebel and Georgia Rust


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

phone_numbers = {
	Jan: 6502347892,
	Bob: 7015672849,
	Sam: 3034589300,
	Dan: 2183459802
}


# Release 1: 

#ingredients.each do |ingredient|
	#puts "#{ingredient}!!"
#end

#ingredients.map! do |ingredient|
	#ingredient.reverse
#end
#puts ingredients

#animal_colors.each do |animal, color|
#	puts color.upcase
#end

# Release 2: 

# 1. 

#ingredients.delete_if {|ingredient| ingredient.length > 6}
#p ingredients

#animal_colors.delete_if {|animal, color| color.include? "e"}
#p animal_colors

# 2. 
#ingredients.keep_if {|ingredient| ingredient.start_with?("c")}
#p ingredients

#phone_numbers.keep_if {|name, number| number.even?}
#p phone_numbers

# 3. 
#p phone_numbers.select {|name, number| number.even?}

#p ingredients.select {|ingredient| ingredient.include? "p"}

# 4. 
#p ingredients.drop_while {|ingredient| ingredient.length > 6}

#p phone_numbers.drop_while {|name, number| number.even?}
 

