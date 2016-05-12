
animal_crackers = {
    'bunny' => 'intact',
    'cat' => 'intact',
    'dog' => 'intact',
    'rabbit' => 'intact',
    'hedgehog' => 'intact'
}

animal_crackers.each do |animal, status|
    puts "Here lies the remains of #{animal}. An honest #{animal} who fell prey to Silar."
end

animal_crackers = [
    'bunny',
    'cat',
    'dog',
    'rabbit',
    'hedgehog',
]

animal_crackers.each do |animal|
    puts "The toddler has bitten the head off of #{animal}!!!!! Run!!!"
end


def welcome_message
    puts "Hello! Welcome to planet Mars!"
    yield("Claire")
end

welcome_message { |name1| puts "It's so great meet you, #{name1}."}