# Santa needs some descriptive phases he will say:
# 1. holiday phrase 
# 2. cookie phrase - he loves all cookies. 

class Santa 
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

	def age(years)
		p "Santa's current age: #{years} years old."
	end



end

# santa = Santa.new("Cis Female", "Asian American")
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("Snickerdoodle")




# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


