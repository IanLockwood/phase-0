# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170, but the problem is on line 15.
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => The input ended unexpectedly; Ruby expected the "end" keyword.
# 5. Where is the error in the code?
# => The lack of another "end" between "puts "What's there to hate about #{thing}?"" and "end"
# 6. Why did the interpreter give you this error?
# => We forgot to end our while statement. The code should look like this:
#
# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 41
# 2. What is the type of error message?
# => A NameError
# 3. What additional information does the interpreter provide about this type of error?
# => The variable "south_park" is undefined.
# 4. Where is the error in the code?
# => Well all of it.
# 5. Why did the interpreter give you this error?
# => We didn't set the variable to anything. We can't do that!

# --- error -------------------------------------------------------

# 	cartman()

# 1. What is the line number where the error occurs?
# => 56
# 2. What is the type of error message?
# => A NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => The method "cartman" is undefined.
# 4. Where is the error in the code?
# => All of it!
# 5. Why did the interpreter give you this error?
# => There is no "cartman" method and we haven't made one!

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end
#
# cartmans_phrase('I hate Kyle')
#
# 1. What is the line number where the error occurs?
# => 71
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The wrong number of arguments was given.
# 4. Where is the error in the code?
# => after "cartmans_phrase" on line 75
# 5. Why did the interpreter give you this error?
# => This method takes no arguments, so we can't give it one on line 75 in the parenthesis.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end
#
# cartman_says
#
# 1. What is the line number where the error occurs?
# => 90, but actually 94.
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => "cartman_says" has the wrong number of arguments. It expected 1 and it was given 0.
# 4. Where is the error in the code?
# => On line 94 after everything.
# 5. Why did the interpreter give you this error?
# => We need to give the method an argument, like cartman_says(hi). It's the opposite of the last error.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 115
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => cartmans_lie has the wrong number of arguments. It expected 2 and it was given 1.
# 4. Where is the error in the code?
# => 115 after cartmans_lie, between the parenthesis.
# 5. Why did the interpreter give you this error?
# => This is similar. We gave a method that takes two arguments only one. We should have given it something like:

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Stan')

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 136
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => The string can't be coerced into a number.
# 4. Where is the error in the code?
# => The order of the line.
# 5. Why did the interpreter give you this error?
# => You can multiply a string by a number, but not a number by a string. You can have 5 words, but not word 5s.
# => Try this instead:

# "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 154
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => You tried to divide something by 0.
# 4. Where is the error in the code?
# => The last character, 0.
# 5. Why did the interpreter give you this error?
# => You can't divide things by 0. Sorry!

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 170
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => You can't load such a file as /Users/Ian/DBC/phase-0/week-4/cartmans_essay.md.
# 4. Where is the error in the code?
# => after require_relative
# 5. Why did the interpreter give you this error?
# I don't have that file locally, so I certainly can't load it. require_relative is just for relative paths, which means I have to have it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => The first one, because it pointed to 170, which was not actually what I needed to fix.

# How did you figure out what the issue with the error was?
# => Looking at the info! When I saw "expecting keyword end" I realized I was lacking an all-important end earlier.

# Were you able to determine why each error message happened based on the code? 
# => I was! The messages are actually pretty helpful.

# When you encounter errors in your future code, what process will you follow to help you debug?
# => Well, this one! I'll check the line number, what kind of error it is, where it is, and the extra info about it.
