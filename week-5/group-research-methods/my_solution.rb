# Person 3

# PSEUDOCODE - my_array_sorting_method
# 1. Define a new method called my_array_sorting_method
# 2. Take an array as an argument
# 3. Sort it alphabetically with numbers from lowest to highest first, then capitalized words, then uncapitalized words.
#   3.1. Make sure the method(s) are NOT destructive.
# 4. Return the modified array.

def my_array_sorting_method(source)
  source.sort {|x, y| x.to_s <=> y.to_s }
end


# PSEUDOCODE - my_hash_sorting_method
# 1. Define a new method called my_hash_sorting_method
# 2. Take a hash as an argument
# 3. Sort it by the pets' ages, that is, the values.
#   3.1. Make sure the method(s) are NOT destructive.
# 4. Return the modified hash.


def my_hash_sorting_method(source)
   source.sort_by {|name, age| age}
end

# Identify and describe the Ruby method(s) you implemented.
  # I used sort for the array sorting, as well as to_s and the <=> comparison operator.
  # For the hash sorting, I used sort_by.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
  # I'm pretty sure you guys get to_s and <=>, so I'll just focus on sort and sort_by.
  # Sort is great, and is very easy to use. Use sort if you'd like to, you know, sort your data alphabetically.
  # If you're just sorting strings you can just call array.sort.
  # If you'd like to reverse the order or perform other manipulations, the syntax is easy; reversing looks like this:
  # a.sort { |x,y| y <=> x }
  # sort_by is great too. Just call it on a hash, and then define what you'd like to sort by.
  # My syntax was: source.sort_by {|name, age| age}
  # As you can see, I named my keys and values, and decided to sort by the values.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
  # I'm certainly learning the correct syntax for google searches. 
  # Researching is easy and handy.
  # Explaining really helps to solidify the concept for myself.

