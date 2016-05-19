# Design a class
# give the class 3 attributes (using 2 different data types) whose v alues vary from instance to instance
# create three methods - at least one must take an argument

# LOGIC

class Barista 

	def initialize(name, place_of_work)
		@name = name
		@place_of_work = place_of_work
		@age = 20
		@drink_can_make = ["Americano", "Doppio", "Espresso","Cappuccino", "Latte", "Macchiato", "Cortado", "Breve", "Mocha", "Frappichino"]
		#p @age
		p "Initializing Barista instance..."
	end
		
	
# welcome method that welcomes the customer to the place of work
def welcome 
	p "Hi! Welcome to #{@place_of_work}. What can I get started for you?"
end

# method that writes the customers name on the cup
def write_name_on_cup(name)
	p "Awesome. What's the name for this order?"
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
end


# Test Code

barista = Barista.new("George", "Starbucks")
barista.welcome
barista.write_name_on_cup("Sarah")
barista.about_barista
# update_quantity(orderable_drinks, "Americano", 3)