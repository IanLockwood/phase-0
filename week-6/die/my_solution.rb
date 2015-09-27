# Die Class 2: Arbitrary Symbols

# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# 2. Pseudocode

# Input: An array of strings, each representing one side of a die
# Output: A random string-side
# Steps:

1: CREATE a new class called "Die".
2: CREATE a new method called "initialize" that takes a single array as an argument.
	2.1: UNLESS the array has at least one object, raise an ArgumentError.
3: CREATE a new method called "sides"
	3.1: RETURN the number of sides
4: CREATE a new method called "roll"
	4.1: RETURN an element from the array by accessing an index that is a number between 0 and the number of sides - 1 (because, you know, arrays).

# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.count
    unless sides >= 1
      raise ArgumentError.new("Please have at least one side.")
    end  
    puts "Your die has #{@sides} sides."
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(0..(@sides - 1))]
  end
end


# # 5. Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# 	No, I didn't have to change much logic. 
# 	All I needed to do was set everything involving number of sides to the count of the array, and toss in another instance variable.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# 	IT'S GREAT. It makes future work super easy. Also, you can build complex code off of basic code.

# What new methods did you learn when working on this challenge, if any?
# 	I learned count, it's great!

# What concepts about classes were you able to solidify in this challenge?
# 	Placement of instance variables, ArgumentErrors, functionality of instance variables, and malleable code.