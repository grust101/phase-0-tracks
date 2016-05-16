# write calc method
# takes 2 parameters: integer, operator string, and another integer

def adding_int(operation_input)
	seperate = operation_input.split


	end




#p adding_int("4, +, 5")


input = ''
while input != 'exit'
	p "Please enter the equation you want me to solve!"
	input = gets.chomp
	if input != 'exit'
		output = "Answer:" + adding_int(input)
		p output
	else
		p "Goodbye!"

	end
end
