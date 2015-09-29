# U2.W5: Virus Predictor

# I worked on this challenge with: Lauren Jin.
# We spent 2.5 hours on this challenge.

#=======================================================================
# RELEASES 1-5
#=======================================================================

  # EXPLANATION OF require_relative
  # This is necessary for both files to run; 
  # require_relative is a method that allows you to load a file relative to the file containing the require_relative statement, 
  # whereas the require method requires us to go through the load path


  # require_relative 'state_data'

  # class VirusPredictor

            # variables for every instance of this class
  #   def initialize(state_of_origin, population_density, population)
  #     @state = state_of_origin
  #     @population = population
  #     @population_density = population_density
  #   end

            # bundling of 2 instance methods that will give us variables to put in semantic string
  #   def virus_effects
  #     predicted_deaths(@population_density, @population, @state)
  #     speed_of_spread(@population_density, @state)
  #   end


    
  #   private

            # predicting deaths based on pop and pop density
            # print 1st half of string
  #   def predicted_deaths(population_density, population, state)
  #     # predicted deaths is solely based on population density
  #     if @population_density >= 200
  #       number_of_deaths = (@population * 0.4).floor
  #     elsif @population_density >= 150
  #       number_of_deaths = (@population * 0.3).floor
  #     elsif @population_density >= 100
  #       number_of_deaths = (@population * 0.2).floor
  #     elsif @population_density >= 50
  #       number_of_deaths = (@population * 0.1).floor
  #     else
  #       number_of_deaths = (@population * 0.05).floor
  #     end

  #     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  #   end

           # predicting speed based on pop density in months
           # predicted speed is solely based on population density
  #   def speed_of_spread(population_density, state) #in months
  #     # We are still perfecting our formula here. The speed is also affected
  #     # by additional factors we haven't added into this functionality.
  #     speed = 0.0

  #     if @population_density >= 200
  #       speed += 0.5
  #     elsif @population_density >= 150
  #       speed += 1
  #     elsif @population_density >= 100
  #       speed += 1.5
  #     elsif @population_density >= 50
  #       speed += 2
  #     else
  #       speed += 2.5
  #     end

  #     puts " and will spread across the state in #{speed} months.\n\n"

  #   end

  # end

  #=======================================================================

  # DRIVER CODE
   # initialize VirusPredictor for each state


  # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
  # alabama.virus_effects

  # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
  # jersey.virus_effects

  # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
  # california.virus_effects

  # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
  # alaska.virus_effects

  # RELEASE 5 PSEUDOCODE
  # Put outside of class
  # Create a method that takes :population_density and :population as arguments
  # For every key, the state, of STATE_DATA, create a new VirusPredictor object

  # def all_states(hash)
  #   hash.each do |x, y| 
  #     state = VirusPredictor.new(x, hash[x][:population_density], hash[x][:population])
  #     state.virus_effects
  #   end
  # end


#=======================================================================
# TOTALLY REFACTORED SOLUTION
#=======================================================================

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects

    if @population_density >= 50
      pop = 0.0
      density = @population_density
      while density > 50
        pop += 0.1
        density -= 50
      break if pop >= 0.4
      end
    else
      pop = 0.05
    end

    number_of_deaths = (@population * pop).floor
    

    speed = 2.5
    while @population_density >= 50 
      speed -= 0.5
      @population_density -= 50
      break if speed <= 0.5
    end
    
    puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================
# DRIVER CODE
#=======================================================================

def all_states(hash)
  hash.each do |x, y| 
    state = VirusPredictor.new(x, hash[x][:population_density], hash[x][:population])
    state.virus_effects
  end
end

all_states(STATE_DATA)

#=======================================================================
# REFLECTION
#=======================================================================

# What are the differences between the two different hash syntaxes shown in the state_data file?
#   The first uses strings as keys.
#   Strings have a different object ID each time they're printed, but that's fine because we don't need to alter the key data ever.
#   However, the hashes those strings point to use symbols as keys.
#   This is because symbols always have the same object ID.
#   That means they take up less space and run faster in the program.
#   Perhaps more importantly, symbols signify that this is set data that we do not want to alter.
#   We manipulate values attached to these symbols many times in our program to get other new results,
#   but we don't want the original data to change.

# What does require_relative do? How is it different from require?
#   It is just like require, only instead of going through the load path, it starts our path in our current directory.

# What are some ways to iterate through a hash?
#   .each, .each_key, .each_value, .map, delete_if, keep_if, .select

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   I noticed that we were taking local variables in the sub-methods, and feeding instance variables to those local variables.
#   I found that very unnecessary as we defined those instance variables in initalize.
#   There was no reason to have a method to run two methods in a row.
#   So, I removed the sub-methods but kept their guts in virus_effects.
#   Now, virus_effects is a single method with NO arguments that does two things in a row.

# What concept did you most solidify in this challenge?
#   We actually learned a few new concepts here. 
#   Other than those, what I solidified was which statements/loops to use when and heavy refactoring.
