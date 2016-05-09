puts "How many users will be processed?"
	users_processed = gets.chomp.to_i
	survey_cycle = 0; 
while  survey_cycle < users_processed 

puts "What is your name?"
	name = gets.chomp
puts "How old are you?"
	age = gets.chomp
puts "What year were you born?"
	birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
	answer = gets.chomp
	
puts "Would you like to enroll in the company’s health insurance?"
	coverage = gets.chomp

allergies =""
while allergies != "done" && allergies != "sunshine"
puts "Please name any allergies (one at a time) and type done when all allergies have been submitted."
	allergies = gets.chomp
end

if allergies == "sunshine"
	puts "Probably a vampire."
else
case
	when age.to_i > 100 && (answer == "yes" || coverage == "yes") 
		puts "Probably not a vampire"
	when age.to_i < 100 && (answer =="no" || coverage == "no") 
		puts "Probably a vampire"
	when age.to_i < 100 && answer == "no" && coverage == "no" 
		puts "Almost certainly a vampire!"
	when name == "Drake Cula" || name == "Tu Fang" 
		puts "Definitely a vampire."
	else
		puts "Results inconclusive."
	end
end



survey_cycle += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."







