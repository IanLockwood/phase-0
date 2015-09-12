# I worked on this challenge with: Zino (Ricky) Hu.


# Your Solution Below

def valid_triangle?(a, b, c)
	if a <= 0 || b <= 0 || c <= 0
		return false
	elsif a + b > c && b + c > a && c + a > b
		return true
	else
		return false
	end
end