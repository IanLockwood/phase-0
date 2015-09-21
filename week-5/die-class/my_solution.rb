# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.


# 0. Pseudocode

# Input: Number of sides
# Output: Random roll between 1 and that number
# Steps:
# 1. DEFINE a class called Die
# 2. DEFINE a method called initialize that takes one argument
# 3. CREATE an instance variable for number of sides
# 4. RETURN the number of sides
# 5. DEFINE a method called sides
# 6. RETURN the number of sides (the instance variable)
# 7. DEFINE a method called roll
# 8. RETURN a random number between 1 and the number of sides (the instance variable)


# 1. Initial Solution

class Die
  def initialize(sides)
  	unless sides >= 1
  		raise ArgumentError.new("Please have at least one side.")
  	end	
    @sides = sides
    puts "Your die has #{@sides} sides."
  end

  def sides
    return @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution

# I think that's as simple as we can get!


# 4. Reflection

# What is an ArgumentError and why would you use one?
# 	An ArgumentError is what it sounds like - an error with the argument you've given a method.
# 	Usually it will be the wrong number of arguments or the wrong argument type, but we can define our own ArgumentErrors.
# 	By using the unless...raise...end syntax, we can define what kind of arguments we don't want, 
# 	then use raise ArgumentError.new("message") to give the user a custom error.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# 	I didn't need to use any new methods, but I used instance variables and created an ArgumentError for the first time.
# 	I actually didn't have any trouble using them!

# What is a Ruby class?
# 	String, array, and hash are Ruby classes, and we can make our own, too. 
# 	A class is a definition - objects that are an instance of a class, and methods are class specific too.
# 	Making our own classes is useful for writing programs because we can define all objects and methods and then use it over and over again.
# 	Another way to think of this is that class is (so far) the top level in Ruby. 

# Why would you use a Ruby class?
# 	As stated in the video, a good metaphor is that classes are blueprints.
# 	We define a class, its methods, and even what its objects look like, and then we can use that data whenever we want.
# 	It's the ultimate in Ruby customization!

# What is the difference between a local variable and an instance variable?
# 	A local variable is local - it scopes to the method and disappears right after.
# 	Instance variables are scoped to the class - you can use them over and over inside and outside of methods.

# Where can an instance variable be used?
# 	Inside a class, but in many different methods within that class.
