# Pad an Array

# I worked on this challenge with: Nathan Luo

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# pad
# Define a method called pad
# Give it 3 arguments, the third being optional
# IF array.length < min_size
# Define a new variable for the new array called new_array
# Push optional value (min_size - array.length) times into new_array
# Return new array for pad
# ELSE array.length >= min_size RETURN array

# pad!
# Define a method called pad!
# Give it 3 arguments, the third being optional
# IF array.length < min_size
# Push optional value (min_size - array.length) times into array
# Return new array for pad!
# ELSE array.length >= min_size RETURN array


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length < min_size
#   	(min_size - array.length).times.map do array.push(value) end
#   		return array
#   	else
#   		return array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
# 	new_array = array + []
#   if array.length < min_size
#   	(min_size - array.length).times do new_array.push(value) end
#   end
# 	return new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
  	(min_size - array.length).times.map { array.push(value) }
  	end
  		return array
end

def pad(array, min_size, value = nil) #non-destructive
	new_array = array.dup
  if array.length < min_size
  	(min_size - array.length).times { new_array.push(value) }
  end
	return new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# 	- We were!

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# 	- It was much easier to code it. I didn't have to think through everything at once, I could just focus on individual steps and then debug.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# 	- It was! but we had to do something we didn't quite understand to get there.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# 	- Yes: instead of using "new_array = array + []", which we didn't understand, we used the .dup method.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# 	- Fairly readable. Our variable name (new_array) was pretty descriptive, but maybe padded_array would have been better. 
# 		The actual block is a bit tough to read, but I don't think there's a great solution.

# What is the difference between destructive and non-destructive methods in your own words?
# 	- Destructive changes an object permanently; Non-destructive does not.
