# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) A string that is a number with commas
# What are the steps needed to solve the problem?

# Take in integer
# IF it is >= 1000
# Convert the integer to a string with to_s
# REVERSE the string
# SPLIT the string
# insert a comma after every third number, unless it would be the last character.
# JOIN the sting
# REVERSE the string
# return the string
# ELSE
# RETURN the integer


# 1. Initial Solution

# def separate_comma(num)
# 	if num >= 1000
# 		str = num.to_s
# 		str.reverse!
# 		arr = str.split(//)
# 		new_arr = []
# 		idx = 0
# 		while (idx + 1) < arr.length
# 			if (idx + 1) % 3 == 0
# 				new_arr.push(arr[idx] + ",")
# 				idx += 1
# 			else
# 				new_arr.push(arr[idx])
# 				idx += 1
# 			end
# 		end
# 		new_arr.push(arr[idx])
# 		new_str = new_arr.join.reverse
# 		return new_str
# 	else
# 		return num.to_s
# 	end
# end

# 2. Refactored Solution

def separate_comma(num)
	if num >= 1000
		arr = num.to_s.reverse.split(//)
# There's a way to iterate here, ASK AT OFFICE HOURS arr.map!.with_index {|x,y} x + "," if y % 3}???
		new_arr = []
		idx = 0
		while (idx + 1) < arr.length
			if (idx + 1) % 3 == 0
				new_arr.push(arr[idx] + ",")
				idx += 1
			else
				new_arr.push(arr[idx])
				idx += 1
			end
		end
		str = new_arr.push(arr[idx]).join.reverse
		return str
	else
		return num.to_s
	end
end

# There's also something I could do with insert.

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# 	I knew first that I would be working with numbers > 1000.
# 	I knew I needed to insert commas every three from the end, so I reversed the string.
# 	I split the string to insert the commas.

# 	I tried a few approaches - I'm still trying to figure out how I could do this with .insert or with iteration.

# Was your pseudocode effective in helping you build a successful initial solution?
# 	Yes, it was invaluable!

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them?
# Did it/they significantly change the way your code works? If so, how?
# 	No new ones; All I could do is consolidate my methods.
# 	I need to figure out iteration, as my solution could have been as simple as:
# 		def separate_comma(num)
# 			if num >= 1000
# 				return str.to_s.(map? each?) {iteration syntax}
# 			else
# 				return num.to_s
# 			end
# 		end

# How did you initially iterate through the data structure?
# 	Yeah, I used a while loop. I don't know if that's fine or if there's a much better way.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# 	No, not really. I just consolidated methods, which is actually a bit harder to read. 
# 	On Monday when I solidify iteration better, my solution will be much more readable.
