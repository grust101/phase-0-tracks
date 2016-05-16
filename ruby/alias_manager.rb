# ask for real name
# take real name and swap first and last
# change any vowels to the next vowl in 'aeiou'
# change any consonants to the next consonant in the alphabet

#Method: 
def change_name(name)
		# create alphabet range
		vowels = 'aeiou'
		vowel_change = vowels.split('').reverse
		consonants = 'abcdefghijklmnopqrstuvwxyz'
		consonant_change = consonants.delete('aeiou').split('').reverse

		original_name = name
		name_reverse = original_name.downcase.split.reverse.join('').split('')


		new_name = name_reverse.map do |letter|
			if vowels.include?(letter)
				vowel_change[vowel_change.index(letter)-1]
			elsif consonants.include?(letter)
				consonant_change[consonant_change.index(letter)-1]
			else
				letter
			end
end

final_name = new_name.join.split.map { |name| name.capitalize}.join('')
end
	


# user interaction: 

input = ''
while input != 'quit'
	p "Please enter your name to get a magical new one or be lame and type 'quit' to exit"
	input = gets.chomp
	if input != 'quit'
		output = "Alias:" + change_name(input)
		border_top = "~~~~~~~~~~~~~~~~~~~~~~"
		border_bottom = "~~~~~~~~~~~~~~~~~~~~~~"

		p border_top
		p output
		p border_bottom
	else 
		p 'Goodbye!'
	

	end
end
