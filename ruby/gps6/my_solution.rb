# EXPLANATION OF require_relative
# require_relative links our files together allowing access to data. # difference between require_relative and require is the location of # the data. ie local vs. net

require_relative 'state_data'

# indentifying VirusPredictor class
class VirusPredictor
# initializing state, population_density and population instances
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end
# calls predicted_deaths and speed_of_spread methods
  def virus_effects
    number_of_deaths =  (@population * predicted_deaths).floor
    speed = speed_of_spread
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  private
# takes the variables population_density, population and state to
# calculate predicted number of deaths. Prints results.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
     0.4
    elsif @population_density >= 150
     0.3
    elsif @population_density >= 100
     0.2
    elsif @population_density >= 50
     0.1
    else
     0.05
    end

  end
# takes the variables population_density and state. Sets speed default to 0. Calculates spread across the state. Prints results.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
  alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
  jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
  california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
  alaska.virus_effects

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state)
  state.virus_effects
end

#What are the differences between the two different hash syntaxes shown in the state_data file? We have a hash within a hash which is why it was descirbed as a"hashy hash".  The nested hash has a value using two symbols with the desired values.

#What does require_relative do? How is it different from require?  Require relative links our files together allowing access to data. The difference between require_relative and require is the location of the data. ie local vs. net

#What are some ways to iterate through a hash? There are many ways to iterate through a hash.  In this case we used each to loop through state_data.

#When refactoring virus_effects, what stood out to you about the variables, if anything? What stood out is how repetative it was when calling instance variables.  We did not need all those arguements to access the variables.

#What concept did you most solidify in this challenge?  What was solidified for me was ways to refector and how each of these methods work together.