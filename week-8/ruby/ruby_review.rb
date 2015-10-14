# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# It looks like to be a fibonacci number,
# 	(5*(the number)^2 + 4) or (5*(the number)^2 – 4) must be a perfect square.
# 	I can code that!

# Initial Solution

# def is_fibonacci?(num)
# i = ((num**2)*5)
# 	Math.sqrt(i + 4).to_i.eql?(Math.sqrt(i + 4)) || Math.sqrt(i - 4).to_i.eql?(Math.sqrt(i - 4))
# end


# Refactored Solution

def is_fibonacci?(num)
	curr = 0
	prev = 1
	while num > curr do
		temp = curr + prev
		prev = curr
		curr = temp
	end
	curr == num
end

# Reflection


# What concepts did you review or learn in this challenge?
# 	Loops, huge numbers, Ruby&math.
# 	At first I tried to use the formula for checking if a number is in the fibonacci sequence, but my numbers were too big to store.

# What is still confusing to you about Ruby?
# 	I don't know how to deal with bignums.

# What are you going to study to get more prepared for Phase 1?
# 	I'm going to go for super complex problems.
# 	I need a little fine tuning on everything, so I'd love to launch into challenges that have a lot of stuff.


