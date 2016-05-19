# Design a class
# give the class 3 attributes (using 2 different data types) whose v alues vary from instance to instance
# create three methods - at least one must take an argument

# LOGIC

class Barista 
	attr_reader :name, :age, :drink_can_make
	attr_accessor :place_of_work, :drink

	def initialize(name, place_of_work, drink)
		@name = name
		@place_of_work = place_of_work
		@drink = drink
		@age = 20
		@drink_can_make = ["Americano", "Doppio", "Espresso","Cappuccino", "Latte", "Macchiato", "Cortado", "Breve", "Mocha", "Frappichino"]
		#p @age
		p "Initializing Barista instance..."
	end
		
	
# welcome method that welcomes the customer to the place of work
	def welcome 
		p "Hi! Welcome to #{@place_of_work}. My name is #{@name}."
	end

	def take_order
		p "What can I get started for you?"
		p "Ah I love making #{@drink}"
	end

	# method that writes the customers name on the cup
	def write_name_on_cup(name)
		p "What's the name for this order?"
		p "Coming right up, #{name}!"
	end

	def about_barista
		top_line = "-----------------------"
		bottom_line = "-----------------------"
		p top_line
		p "Barista Information: "
		p "Name: #{@name}"
		p "Place of Work: #{@place_of_work} "
		p bottom_line
	end

# attribute changing method for age and drink can make
# The barista learns how to make a new drink so you need to add it to drinks can make

	def growing_up
		age = @age +1
		p "#{@name} is now #{age} years old!"
	end

	def new_drink_learned(drink)
		p @drink_can_make.insert(0, drink)

	end

# Getter methods for name and age

# 	def name
# 		@name
# 	end

# 	def age
# 		@age
# 	end

# 	def place_of_work
# 		@place_of_work
# 	end

# # setter method for place of work (just in case they get fired!)

# 	def place_of_work=(new_place_of_work)
# 		@place_of_work = new_place_of_work
# 	end

end


# Test Code

# barista = Barista.new("George", "Starbucks", "Iced Coffee")
# barista.welcome
# barista.take_order
# barista.write_name_on_cup("Sarah")
# barista.about_barista

# barista.new_drink_learned("Cafe au Lait")

# p "The barista was fired from #{barista.place_of_work}."
# barista.place_of_work= "Peet's Coffee"
# p "The barista now works at #{barista.place_of_work}."

# USER INTERFACE
# User should be allowed to create as many instances of you class as they'd like
# Prompt the user for each attribute - convert input into appropriate data type
# when user is finished - loop through array and print out the attributes of each instance

input = " "
name_option = @name
place_of_work_option = @place_of_work
drink_option = @drink
barista_array = []

until input == "done"
	barista = Barista.new(name_option, place_of_work_option, drink_option) 
	p "What is your name?"
	name_option = gets.chomp
	
	p "Where do you work?"
	place_of_work_option = gets.chomp

	p "What drink are you making?"
	drink_option = gets.chomp


	barista.welcome 
	 
	barista_array << barista
	 
end












# Method to create certain drinks and know how many to make
# 	def create_drinks(input)
# 		orderable_drinks = Hash.new 
# 		input_split = input.split(" ")
# 		input_split.each do |drink| 
# 			orderable_drinks[drink] = 1
# 		end
# 		p orderable_drinks
# 	end
# 	orderable_drinks = create_drinks("Americano Doppio Espresso Cappuccino Latte Macchiato Cortado Breve Mocha Frappichino")
		
# # Method to fix order when customer messed up how many	
# 	def update_quantity(order, drink, quantity)
# 	order[drink] = quantity
# 	p order
# 	end

# update_quantity(orderable_drinks, "Americano", 3)