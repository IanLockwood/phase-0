# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
	idx = 0
	list_of_integers.each do |x|
		if x <= upper_bound && x >= lower_bound
			idx = idx + 1
		end
	end
	return idx
end

# Couldn't find a built-in for this one