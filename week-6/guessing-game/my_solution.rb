# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# 2. Pseudocode

# Input: A guess
# Output: A hot-and-cold system of finding the answer
# Steps:

# 1. CREATE a class called GuessingGame.
# 2. CREATE a new method called initialize that takes an iteger, answer, as an argument.
# 3. CREATE a new method called guess.
# 	- IF the guess = the answer return :correct
# 	- ELSIF the guess > the answer return :high
# 	- ELSE return :low
# 4. CREATE a new method called solved?.
# 	- CREATE an instance varible that stores the most recent guess.
# 	- IF the most recent guess was :correct, return true
# 	-ELSE return false

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
  	@last_guess = integer
  	if integer == @answer
  		return :correct
  	elsif integer > @answer
  		return :high
  	else
  		return :low
  	end
  end

  def solved?
  	if @last_guess == @answer
  		return true
  	else
  		return false
  	end
  end
end

# 4. Refactored Solution

# Not sure I could make that too much simpler!


# 5. Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# 	Well, a method might be some performable action, and an instance variable a remembered result of that action.

# When should you use instance variables? What do they do for you?
# 	Instance variables are awesome for sharing data between methods.
# 	IE, they're not local.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# 	Flow control tells Ruby what to do under different conditions.
# 	To use it, define conditions you'd like to see results for, and then tell Ruby what to do under those circumstances.
# 	That can be an if/end, an if/elsif/else, an unless, while, for or do.
# 	I actually find flow control pretty easy because it's so semantic.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# 	Symbols only have 1 ID, whereas strings have a different one each time they're printed.
# 	This saves a lot of memory and makes a program run faster.
# 	I think there may be another reason, but I'm not sure - I think I may have found out if I used a symbol in the solved? method.
