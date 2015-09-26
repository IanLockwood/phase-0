
























    
    
    
        x
        x
        x * 2
        x * 2
      else
      else
      end
      end
      if y % 2 == 0
      if y % 2 == 0
      raise ArgumentError.new("Your number must be 16 digits")
    @num = @num.join
    @num = @num.join
    @num = array_credit.each_with_index.map do |x,y|
    @num = array_credit.each_with_index.map do |x,y|
    @num = digits.map! {|x| x.to_i}
    @num = digits.map! {|x| x.to_i}
    @num = number
    @num.each {|x| @total = x + @total}
    @total = 0
    @total = 0
    array_credit = @num.to_s.split('')
    array_credit = @num.to_s.split('')
    array_credit = []
    array_credit = []
    array_credit.map! {|x| x.to_i}
    array_credit.map! {|x| x.to_i}
    digits = @num.to_s.split('')
    digits = @num.to_s.split('')
    digits = []
    digits = []
    end
    end
    end
    if number.to_s.length != 16
    return @total
  @num.each {|x| @total = x + @total}
  @total % 10 == 0
  def check_card
  def double
  def initialize(number)
  def split_digits
  def sum
  end
  end
  end
  end
  end
#   A bit more on iteration, classes and initialization, and nesting.
#   each_with_index was great.
#   OH GOD CHECKING THE CARD. It took us hours.
# 1. Create an initialization with one argument.
# 2. If it is not 16 digits than create an ARGUMENTERROR that states it.
# 3. Inside the initialization create an instance variable of the input.
# 4. Use an UNTIL method to double every digit starting from the second to last to the first digit. 
# 5. create a method that uses SPLIT to break up double integer digits and sum all untouched digits with the doubled digits.
# 6. Create a method to check the output with a modular of 10. If it equals 0 then return true, else false.
# Class Warfare, Validate a Credit Card Number
# I spent [4] hours on this challenge.
# I worked on this challenge with Eric Shou.
# Initial Solution
# Input: A string of digits
# Output:  returns true or false for a number that is divisible by 10 with no remainder.
# Pseudocode
# Reflection
# Steps:
# What concepts or learnings were you able to solidify in this challenge?
# What new methods did you find to help you when you refactored?
# What was the most difficult part of this challenge for you and your pair?
class CreditCard
end