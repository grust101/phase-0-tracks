# write calc method
# takes 3 parameters: integer, operator string, and another integer
# makes calculations for operators + - / * 

# LOGIC

def calculate(integer, operator, integer1)
	if operator == "+"
		p integer + integer1
	elsif operator == "-"
		p integer - integer1
	elsif operator == "*"
		p integer * integer1
	elsif operator == "/"
		p integer / integer1
	else
		p "I'm sorry that's not a valid equation!"
		
	end
end

# def join_ints_ops(integer, operator, integer1)
# 	integer[operator] << integer1
# end

# def print_equation(equation)
# 	p ".........."
# 	p "Answer: "



# TEST CODE
 # p calculate(4, "+", 5)
 # p calculate(10, '/', 2)
 # p calculate(2, '*', 10)
 # p calculate(1, '-', 5)



# USER INTERFACE

can_calc = true


while can_calc
	# get an equation to solve from user
	p "Please enter the equation you want me to solve! (Enter 'done' when you've had enough)"
	entered_equation = gets.chomp
	# if the user is done, stop loop
	break if entered_equation == 'done'
	# otherwise keep calculating
	can_calc = calculate(integer, operator, integer1)
	if !can_calc
		puts "Sorry that equation doesnt work!"
	end
end