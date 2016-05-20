module Shout
	# Methods will go here 
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end

	def self.yell_happily(words)
		words.upcase + "!!!!" + ":D"
	end


p self.yell_angrily("You are so mean")
p self.yell_happily("You are the nicest human on Earth")

end