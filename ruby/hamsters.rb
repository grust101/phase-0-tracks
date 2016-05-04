puts "What's that hamster's name!?"
	name = gets.chomp
puts "On a scale 1-10 how loud is this little guy?"
	loudness = gets.chomp.to_i
puts "What color are dem dreads?"
	color = gets.chomp
puts "Worthy of adoption? Yes or No"
	answer = gets.chomp
puts "How old is the fuzz ball?"
	age = gets.chomp

if age == "" then 
   age = nil 
else
	age = age.to_i

end

p "Hello, this is #{name}! On a scale of 1-10, my loudness is a #{loudness}."
p "My fur is #{color}... I know I'm pretty and if you're asking if I'm worthy for adoption the answer is #{answer}."
if age != nil then
p "I am awesome and #{age} years young."
else
p "I am immortal. Boom."
end
