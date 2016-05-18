# Santa needs some descriptive phases he will say:
# 1. holiday phrase 
# 2. cookie phrase - he loves all cookies. 

class Santa
	attr_reader :age
	attr_accessor :gender, :ethnicity, :age


	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		# p @age 
		# p @reindeer_ranking
		p "initializing Santa instance...."
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		
		p "That was a good #{cookie}!"
	end

	def about
		p "Gender: #{@gender}"
		p "Ethnicity: #{@ethnicity}"
	end


# Attribute changing methods
	def celebrate_birthday
		age = @age + 1
		p "Santa is now #{age} years old!"
	end

	def get_mad_at(name)
		if @reindeer_ranking.include?(name) == true
		 index_to_rotate = @reindeer_ranking.index(name)
		 p @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(index_to_rotate))
		else
			p "No one's in trouble"
	end	

	# Getter methods for age and ethnicity

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender
	# 	@gender
	# end
 # #Create a setter method that allows @gender to be reassigned outside the class def
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def ethnicity=(new_ethnicity)
	# 	@ethnicity = new_ethnicity
	# end
end

santa = Santa.new("Cis Female", "Asian American")
santa.about
santa.speak
santa.eat_milk_and_cookies("Snickerdoodle")
santa.celebrate_birthday
santa.get_mad_at("Vixen")
p " Santa is #{santa.age} years old!"

p "Santa's ethnicity is #{santa.ethnicity}."
santa.ethnicity= "White"
p "Santa's ethnicity is now #{santa.ethnicity}"


p "Santa's gender is #{santa.gender}."
santa.gender= "Male"
p "Santa's gender is now #{santa.gender}"

end



index= 0
gender_options = ["female", "male", "agender", "bigender", "cis female", "male"]
ethnicity_options = ["Hispanic", "Asian American", "African American", "Perfer not to answer", "White"]
age_range = (0..140)
santa_array = []

until index == 100
	santa = Santa.new(gender_options, ethnicity_options)
	p santa.gender = gender_options.sample
	p santa.ethnicity = ethnicity_options.sample
	p santa.age = rand(age_range)
	index += 1
	santa_array << santa
end






# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end


