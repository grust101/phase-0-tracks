# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create grocery list hash
  # Split the input into different keys
  # put the keys into the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def create_list(input)
	grocery_list = Hash.new
	input_split = input.split(" ")
	input_split.each do |item|
		grocery_list[item] = 1
	end
	p grocery_list
end
grocery_list = create_list("carrots apples cereal pizza")

#hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# put the keys and value into the hash
	# print hash
# output: printed hash

def add_item(list, item, quantity)
	list[item] = quantity
	p list
end


# Method to remove an item from the list
# input: list and item name
# steps: 
	# delete item name from hash
# output: print hash
def remove_item(list, item_name)
	list.delete(item_name){|item| list[item] = item_name}
	p list
end



# Method to update the quantity of an item
# input: list, item and quantity
# steps: change value of the item to the desired quantity
# output: print hash
def update_quantity(list, item, quantity)
	list[item] = quantity
	p list
end

update_quantity(grocery_list, "carrots", 8)

# Method to print a list and make it look pretty
# input: the hash 
# steps:
	# print lines with underscores
	# block line code (each) to print out each item and value
# output: hash
def print_list(list)
	list.each do |item, quantity|
		puts "#{item}, amount: #{quantity}"
	end
end

# DRIVER CODE

add_item(grocery_list, "cucumbers", 10)
remove_item(grocery_list, "cucumbers")
print_list(grocery_list)

# REFLECT
# What did you learn about pseudocode from working on this challenge?
# Pseudocoding before hand is SO IMPORTANT! It helps with naming methods and keeping things clean but it also helps with making the method! You essentially create organized instructions for coding. 

# What are the tradeoffs of using arrays and hashes for this challenge?
# I would say arrays are easier to manipulate with built in methods, but hashes also make it possible to have a key and a value = more data. 

# What does a method return?
# a method returns a manipulated output. 

# What kind of things can you pass into methods as arguments?
# You can use things like each and map to make every feature of an argument go through it's own change. 

# How can you pass information between methods?
# iteration!

# What concepts were solidified in this challenge, and what concepts are still confusing?

#.each is solidified.  calling things within a hash : list[item] are still confusing...to me it looks like list is the hash and item is the key within it... It confuses me because the [] make me think it's an array, maybe that turns it into an array.. idk still confused on that. 
 
