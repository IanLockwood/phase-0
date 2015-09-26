# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
# Copy solution here:





# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# 3. My original solution:



# 4. My refactored solution:




# 5. Reflection




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
  @total % 10 == 0
  end
  
end





card = CreditCard.new(4408041234567906)


p card.initialize(4408041234567906)