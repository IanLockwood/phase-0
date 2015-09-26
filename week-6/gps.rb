# Your Names
# 1) Ian Lockwood
# 2) Ryan Lesson

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # remove error counter
  # compared library key "item_to_make" to nil
  # if == nil raise ArgumentError


    if library[item_to_make] == nil
      raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #hashed the keys value of library for the value of the variable serving size
  #Find modulus of Order_quantity/serving size
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  
  
  #Remove case statement and replaced it with a simpler if/elsif/else statement
  #Added suggestion function
  #Pushed suggestion keys into an array
  suggested=[]
  if serving_size_mod > 0
    library.each do |key,value|
      if serving_size_mod >= value
        
        suggested << key
      end
    end  
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items:#{suggested}"
  
  elsif serving_size_mod ==0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you do not have enough ingredients"
  end

end
    
  
#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
#   It's tough! Elaborating too much can make everything look messy, so you have to be concise and format well.
#   Also, unreadable code is a huge problem when you're working with legacy code.

# Did you learn any new methods? What did you learn about them?
#   No...unless...was this the first time I used ArgumentError? 
#   Well ArgumentError is a neat way to guide user input, and I've been told it gets more interesting with error handling.

# What did you learn about accessing data in hashes? 
#   Iteration makes it easier, and so does setting good variables!

# What concepts were solidified when working through this challenge?
#   Hashes, complex and nested methods, user interaction, and legacy code.



