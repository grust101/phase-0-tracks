# given client: the client's name, age, number of children, decor theme


# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered 
# all of the questions.
# Give the user the opportunity to update a key 
# (no need to loop, once is fine). After all, sometimes users make mistakes! 
# If the designer says "none", skip it. But if the designer enters "decor_theme" 
# (for example), your program should ask for 
# a new value and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, 
# which would be quite handy here.) You can assume the user will 
# correctly input a key that exists in your hash -- no need 
# to handle user errors.
# Print the latest version of the hash, and exit the program.

# create a hash with all the keys and default values
client_info = {
    name: "",
    age: nil,
    :"number of children" => 0,
    :"decor theme" => nil
    # no_spaces: 42
}

# prompt user to fill in information
client_info.each {|key, value| 
    puts "#{key}: "
    client_info[key] = gets.chomp

    # take care of data formating
    if key == :name || key == :"decor theme"
        # do nothing because it's already a string
    elsif key == :age || key == :"number of children"
        # it's an integer
        # p "inside here"
        # p client_info[key]
        client_info[key] = client_info[key].to_i
        # p client_info[key]
    end
}

# Ask if user wants to change key/value 
input = ""
while (input != "none")
    # display hash
    puts "Current info:"
    client_info.each {|key, value|
        puts "#{key}: #{value}"
    }
    puts "Enter key to change, new key to add, or 'none' to exit: "
    input = gets.chomp
    if input == "none"
        # do nothing
    elsif client_info.fetch(input.to_sym, false)
        puts "Enter new value for #{input}: "
        client_info[input.to_sym] = gets.chomp
    else
        puts "Enter value for #{input}"
        client_info[input.to_sym] = gets.chomp
    end
end

# display hash
client_info.each {|key, value|
    puts "#{key}: #{value}"
}