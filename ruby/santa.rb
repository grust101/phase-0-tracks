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

# Create a setter method that allows @gender to be reassigned outside the class def
def gender= (new_gender)
	@gender = new_gender
end

# Getter methods for age and ethnicity

def age
	@age
end

def ethnicity
	@ethnicity
end

end

santa = Santa.new("Cis Female", "Asian American")
santa.about
santa.speak
santa.eat_milk_and_cookies("Snickerdoodle")
santa.celebrate_birthday
santa.get_mad_at("Vixen")

santa.gender= "African American"
p "Santa is #{santa.gender}."

p " Santa is #{santa.age} years old!"
p "Santa's ethnicity is #{santa.ethnicity}."



# santa = []

# gender_options = ["female", "male", "agender", "bigender", "cis female", "male"]
# ethnicity_options = ["Hispanic", "Asian American", "African American", "Perfer not to answer", "White"]
# gender_options.length.times do |i|
# 	santa << Santa.new(gender_options[i], ethnicity_options[i])



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


end
