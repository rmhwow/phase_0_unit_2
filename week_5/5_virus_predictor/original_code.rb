# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
#that means that in order for this code to work it needs the input information that comes from the ruby document state_data.

#What is the code doing? It's taking the information from state data such as name, pop, pop density, region, and regional_spread. Without the state data document the rest of this code wouldn't be able to work.
require_relative 'state_data'

class VirusPredictor
    #def initialize
    #this method is making the contents of the hash, instance variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  #def virus_effects
  #this sets up the variable predicted_deaths to take the arguments of pop density, pop and state
  #it sets the variable speed_of_spread up as well to take the arguments of pop_density and state
  
  def virus_effects  #HINT: What is the SCOPE of instance variables? The scope of instance variables is one object.  this sets up the variables to figure out the equation for how many numbers of deaths.
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this? Private makes all the methods that follow this word not accessible for outside objects.   what happens if it were cut and pasted above the virus_effects method the whole code doesn't work because you can't access the virus_effects and use that to calculate the population density. 
  
  #def predicted_deaths
  
  def predicted_deaths(population_density, population, state)
    case @population_density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when 101..150
      number_of_deaths = (@population * 0.3).floor
    when 51..100
      number_of_deaths = (@population * 0.2).floor
    when @population_density <= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #def speed of spread
  #this is your pretty basic if else statement (I changed it later to a case statement but same concept for what it does).  This calculates the speed of the spread. The equation is set up so if the population density is a certain number than the speed is speed + 0.5, 1, 1.5, 2, and 2.5 respectively. 
  def speed_of_spread(population_density, state) #in months
    speed = 0.0
    case @population_density
    when @population_density >= 200
      speed += 0.5
    when 101..150
      speed += 1
    when 51..100
      speed += 1.5
    when @population_density <= 50
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
STATE_DATA.each do |state, info|
    VirusPredictor.new(state, info[:population_density], info[:population], info[:region], info[:regional_spread]).virus_effects
end
