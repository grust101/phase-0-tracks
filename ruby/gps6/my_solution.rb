# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

# initializes variables given by the state_data file (key and value)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# outputs data using predicted death and speed of spread methods by using the attribute variables as parameters
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
  end



  private


# looks at the population_density and then runs the math of number of deaths using population and rounding down to nearest full interger
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    speed_of_spread(population_density, state)
  end


# looks at the population_density and then returns string based on population_density value from state_data

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, pop_data| 
  states = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
states.virus_effects
end



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# require_relative connects the state data to the my solution page so that  it can use the information from state data in my solution. Require is different in the way that you need to create the path.

# Release 3: This syntax has a key and values and within the values there are 2 additional keys (that are actually symbols) and values. State_Data is a hash - but then the variable itself is specifc to ruby  and it is a constant- just because of the way it's written.  