# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of those numbers
# Steps to solve the problem.
# 1. Create a counter and a result variable
# 2. Set counter to 0
# 3. Use a WHILE loop and increase counter by 1 until counter = array.length
# 4. add array[counter] to result
# 5. return result


# 1. total initial solution
=begin
def total(arr)
	counter = 0
	result = 0
	while counter < arr.length
	result = result + arr[counter]
	counter = counter + 1
	end
	return result
end
=end


# 3. total refactored solution
def total(arr)
	arr.inject{|result,x| result + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: A single sentence string
# Steps to solve the problem.
# 1. Create a method called sentence_maker
# 2. Take in an array of strings.
# 3. Create counter and result variables
# 4. Set counter to 0
# 5. Add them all together until the counter = sentence.length
# 6. Capitalize the first letter
# 7. Add a period
# 8. Return the result

# 5. sentence_maker initial solution
=begin
def sentence_maker(sentence)
	counter = 0
	result = ""
	while counter < sentence.length - 1
	result = result + sentence[counter].to_s + " "
	counter = counter + 1
	end
	result = result.capitalize! + sentence[counter].to_s + "."
	return result
end
=end

# 6. sentence_maker refactored solution
def sentence_maker(sentence)
	result = sentence.join(" ")
	result = result.capitalize! + "."
end
