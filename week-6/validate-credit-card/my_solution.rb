# Class Warfare, Validate a Credit Card Number

# I spent [4] hours on this challenge.
# I worked on this challenge with Eric Shou.


# Pseudocode
# Input: A string of digits
# Output:  returns true or false for a number that is divisible by 10 with no remainder.

# 1. Create an initialization with one argument.
# 2. If it is not 16 digits than create an ARGUMENTERROR that states it.
# 3. Inside the initialization create an instance variable of the input.
# 4. Use an UNTIL method to double every digit starting from the second to last to the first digit. 
# 5. create a method that uses SPLIT to break up double integer digits and sum all untouched digits with the doubled digits.
# 6. Create a method to check the output with a modular of 10. If it equals 0 then return true, else false.


# Initial Solution

class CreditCard

  def initialize(number)
    @num = number
    @total = 0
    if number.to_s.length != 16
      raise ArgumentError.new("Your number must be 16 digits")
    end
  end

  def double
    array_credit = []
    array_credit = @num.to_s.split('')
    array_credit.map! {|x| x.to_i}
    @num = array_credit.each_with_index.map do |x,y|

      if y % 2 == 0
        x * 2
      else
        x
      end
    end
  end

  def split_digits
    digits = []
    @num = @num.join
    digits = @num.to_s.split('')
    @num = digits.map! {|x| x.to_i}
  end



  def sum
    @num.each {|x| @total = x + @total}
    return @total
  end

  def check_card

    @total = 0
    
    array_credit = []
    array_credit = @num.to_s.split('')
    array_credit.map! {|x| x.to_i}
    @num = array_credit.each_with_index.map do |x,y|

      if y % 2 == 0
        x * 2
      else
        x
      end
    end
    
    digits = []
    @num = @num.join
    digits = @num.to_s.split('')
    @num = digits.map! {|x| x.to_i}
    
  @num.each {|x| @total = x + @total}
  @total % 10 == 0
  end

end




# Reflection

# What concepts or learnings were you able to solidify in this challenge?
#   A bit more on iteration, classes and initialization, and nesting.

# What new methods did you find to help you when you refactored?
#   each_with_index was great.

# What was the most difficult part of this challenge for you and your pair?
#   OH GOD CHECKING THE CARD. It took us hours.

