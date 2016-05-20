# module Shout
# 	# Methods will go here 
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 	def self.yell_happily(words)
# 		words.upcase + "!!!!" + ":D"
# 	end


# p self.yell_angrily("You are so mean")
# p self.yell_happily("You are the nicest human on Earth")

# end

module Shout
	def yell_angrily(words)
		p words + "!!!!" ":|"
	end
	def yell_happily(words)
		p words.upcase + "!!!!!!" + ":D"
	end
end

class Mom 
	include Shout
end

class Ex
	include Shout
end

mom = Mom.new
mom.yell_angrily("Clean your room")
mom.yell_happily("Your room is clean")

ex = Ex.new
ex.yell_angrily("You broke my heart")
ex.yell_happily("I still love you")