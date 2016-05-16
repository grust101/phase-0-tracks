
# animal_crackers = {
#     'bunny' => 'intact',
#     'cat' => 'intact',
#     'dog' => 'intact',
#     'rabbit' => 'intact',
#     'hedgehog' => 'intact'
# }

# animal_crackers.each do |animal, status|
#     puts "Here lies the remains of #{animal}. An honest #{animal} who fell prey to Silar."
# end

# animal_crackers = [
#     'bunny',
#     'cat',
#     'dog',
#     'rabbit',
#     'hedgehog',
# ]

# animal_crackers.each do |animal|
#     puts "The toddler has bitten the head off of #{animal}!!!!! Run!!!"
# end


# def welcome_message
#     puts "Hello! Welcome to planet Mars!"
#     yield("Claire")
# end

# welcome_message { |name1| puts "It's so great meet you, #{name1}."}

 # WAHOOOOOOO
# ~/Google Drive/devbootcamp/phase-0-tracks/ruby(solo-challenge ✗) ruby alias_manager.rb
# Enter your name to find alias or 'quit' to quit:
# Max Bigras
# ====================================================
# =                Alias: Cohset Ney                 =
# ====================================================
# Enter your name to find alias or 'quit' to quit:
# quit
# ~/Google Drive/devbootcamp/phase-0-tracks/ruby(solo-challenge ✗) 

 def create_alias (name_input)
    # prep alphabet tools
    # it will be easier to work with "aeiou" if we can go backwards
    vowels = "aeiou"
    vowels_array = vowels.split("").reverse
    # vowels[vowels.index("a")-1] # takes us to the next letter

    # same with the consenants
    consenants = "abcdefghijklmnopqrstuvwxyz"
    consenants_array = consenants.delete("aeiou").split("").reverse
    # consenants[consenants.index("b")-1] # takes us to the next letter

    name_original = name_input
    # name_original = "Felicia Torres"
    # name_original = "Max Bigras"
    # make the name uniform to work with
    # Swap first and last
        # split it up by spaces
        # reverse 
        # join but **make sure to add a space in the middle**
    name_reversed_array = name_original.downcase.split.reverse.join(" ").split("")

    # create a new array with to put the map into
    name_alias_array =  name_reversed_array.map do |letter| 
        if vowels.include?(letter)
            # if it's a vowel then give map the next vowel
            vowels_array[vowels_array.index(letter)-1]
        elsif consenants.include?(letter)
            # if it's a consenant then give map the next consenant
            consenants_array[consenants_array.index(letter)-1]
        else
            # if it's a space or something else then just keep it
            letter
        end
    end 

    # sew it back up then split it again then capitalize then join it again
    name_alias = name_alias_array.join.split.map { |name| name.capitalize }.join(" ")

    # p name_original
    # p name_alias
end

# p create_alias("Felicia Torres")

# UI

input = ""
while input != "quit"
    puts "Enter your name to find alias or 'quit' to quit:"
    input = gets.chomp
    if input != "quit"
        top_line = "===================================================="
        middle_line = "Alias: " + create_alias(input)

        if middle_line.length > (top_line.length - 2)
            puts "Your name is too long"
        else
            padding = (top_line.length - middle_line.length)/2

            middle_line_array = middle_line.split("")
            padding.times { middle_line_array.unshift(" ") }
            middle_line = middle_line_array.join

            (top_line.length - middle_line.length).times { middle_line << " " }

            # if (top_line.length == middle_line.length) then p "it worked!" end
            middle_line[0] = middle_line[-1] = "="

            puts top_line
            puts middle_line
            puts top_line
        end
    end
end
