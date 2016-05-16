# create a program that enters the following information for a given client
# 1. Name 
# 2. Age
# 3. Number of Children
# 4. Decor Theme

#ask the use for all this information
# Convert any user input into the correct data type
# Do this for all the questions
# Give the user the opportunity to update the key
# 



client_data = {
name: "",
age: nil,
:"number of children" => 0,
:"decor theme" => nil
}

client_data.each {|key, value|
	puts "#{key}:"
	client_data[key] = gets.chomp

	if key == :Name || key ==:"Decor Theme"

	elsif key == :Age || key == :"Number of Children"
		#it's an integer
		# p "inside here"
		# client_data[key]
		client_data[key] = client_data[key].to_i
	end
}



input = ""

while (input != "none") 
	#display hash
	puts "Here is your current information:"
	client_data.each {|key, value|
		puts "#{key}: #{value}"
	}
	p "If there's any information that needs editing please type the category (name, age, number of children, decor style)"
	input_to_update = gets.chomp
	if input_to_update == "none"
		puts "welcome to Georgia Rust design"
	elsif client_data.fetch(input.to_sym, false)
		puts "Enter correct input for #{input_to_update}"
		client_data[input_to_update.to_sym] = gets.chomp
	else
		puts "Enter value for #{input_to_update}"
		client_data[input_to_update.to_sym] = gets.chomp
	end
end

client_data.each  {|key, value|
	puts "#{key}: #{value}"
}
