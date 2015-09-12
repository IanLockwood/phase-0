# Calculate a Grade

# I worked on this challenge by myself.


# Your Solution Below

def get_grade(num)
	if num >= 90
		return "A"
	elsif num >= 80
		return "B"
	elsif num >= 70
		return "C"
	elsif num >= 60
		return "D"
	elsif num < 60
		return "F"
	end
end