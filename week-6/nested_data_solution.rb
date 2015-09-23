
# RELEASE 1

# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][1][0]

p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[outer:][inner:]["almost"][3]

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 2

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
	if element.kind_of?(Array)
		element.map! {|x| x + 5}
	else
		element + 5
	end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
	if element.kind_of?(Array)
		element.map! do |x|
		if x.kind_of?(Array)
			x.map! {|y| y.to_s + "ly"}
		else
			x.to_s {|y| y.to_s + "ly"}	
		end
	end
	else
		element.to_s + "ly"
	end
end


p startup_names


# REFLECTION

# What are some general rules you can apply to nested arrays?
# 	Nested arrays behave the same as normal arrays ONCE YOU GET INSIDE THE FIRST ARRAY LAYER.
# 	I.E. Once you've indexed into your array or are examining elements withing your outermost array as standalone objects, you can work with nested arrays as normal.

# What are some ways you can iterate over nested arrays?
# 	Each, map, times, size - Anything once you're within the outer array.
# 	This question is confusing, do you mean how do I do it?
# 	The handiest way to do that is to use the kind_of? method to ask if the element is a nested array, then tell Ruby to do something IF it in fact is.
# 	You can then write a next-level iteration statement to iterate over the nested array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# 	I mostly re-used them, other than kind of. But I got great, solidifying practice with map, map!, and iteration syntax.
