# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

# DEFINE a method that initializes the PezDispenser with flavors
# DEFINE a method that counts how many pez there are in the dispenser
# DEFINE a method that takes a pez from the top of the dispenser
# DEFINE a method that adds a pez to the bottom of the dispenser
# DEFINE a method that shows all of the flavors in the dispenser in order.


# Solution

class PezDispenser
  
  def initialize(flavors)
    @flavors = flavors
  end
  
  def pez_count
    @flavors.length
  end
  
  def see_all_pez
    @flavors
  end
  
  def add_pez(pez)
    @flavors.push(pez)
  end
  
  def get_pez
    @flavors.shift
  end

end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"



# Reflection

# What concepts did you review in this challenge?
# 	Classes, arrays, shift, pop, push, unshift.

# What is still confusing to you about Ruby?
# 	Classes are a little tricky, I don't have the concept super solidified.

# What are you going to study to get more prepared for Phase 1?
# 	Classes!

