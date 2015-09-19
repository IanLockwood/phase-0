# Calculate the mode Pairing Challenge

# I worked on this challenge with Marcel Galang.

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

#input
#take the given array
#output
#return array of only most frequently occuring value(s)


#Step=
#1.  Define the method mode
#2. create empty hash
#3. fill hash with index# as keys and array objects as values
#4. find most frequently used value(s)


# 1. Initial Solution

# def mode(arr)
#   idx = 0
#   occurences = 0
# while idx < arr.length
#   if arr.count(arr[idx]) > occurences
#     occurences = arr.count(arr[idx])
#   end
#   idx += 1
# end
#   new_array = []
#   new_idx = 0
# while new_idx < arr.length
#   if occurences == arr.count(arr[new_idx])
#     new_array << arr[new_idx]
#   end
#     new_idx += 1
# end
#   h = {}
#   final_array = []
#   newer_idx = 0
#   while newer_idx < new_array.length
#     h[new_array[newer_idx]] = 0
#     newer_idx += 1
#   end
#   final_array = h.collect {|key,value| key }
#   return final_array
#   end


# 3. Refactored Solution

def mode (arr)
  idx = 0
  occurences = 0
while idx < arr.length
  if arr.count(arr[idx]) > occurences
    occurences = arr.count(arr[idx])
  end
  idx += 1
end
  h = {}
  idx = 0
while idx < arr.length
  if occurences == arr.count(arr[idx])
    h[arr[idx]] = 0
  end
    idx += 1
end
  final_array = h.collect {|key,value| key }
  return final_array
  end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# 	We used an array => hash => array structure. 
# 	At first we tried to work from a hash at the top, which was really tough.
# 	Our working data structure was much better, and a good combination of what we knew (arrays) and what we were shaly on (hashes).

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# 	No, actually. In the previous challenge the problem was easier to wrap my head around, so pseudocode was less helpful.
# 	I am getting a lot better at pseudocode, though, and it's very helpful.

# What issues/successes did you run into when translating your pseudocode to code?
# 	Our pseudocode was not descriptive enough, once we got to the meat of the problem we didn't have anything planned.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# 	We used count and collect, which were great. we also toyed with max and each_value.

