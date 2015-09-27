#Attr Methods

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

class NameData

  attr_accessor :name

  def initialize
    @name = "Ian"
  end

end


class Greetings

  def initialize
    you = NameData.new
    @you = you.name
  end

  def hello
    puts "Hello #{@you}! How wonderful to see you today."
  end

end

greet = Greetings.new
p greet.hello




# RELEASE 1

# What are these methods doing?
# 	Setting, changing, and returning info (name, age, occupation).

# How are they modifying or returning the value of instance variables?
# 	There is a separate method for each that accesses an instance variable.



# RELEASE 2

# What changed between the last release and this release?
# 	We added a reader attribute that let us set the connected @age instance variable just by calling its name.

# What was replaced?
# 	what_is_age was replaced with the attribute.

# Is this code simpler than the last?
# 	Only by two lines and two words, but I see where we're going with this.



# RELEASE 3

# What changed between the last release and this release?
# 	We added a writer attribute that let us change the connected @age instance variable just by calling its name.

# What was replaced?
# 	change_my_age was replaced with the writer attribute.

# Is this code simpler than the last?
# 	Yes, it's a lot more concise and semantic.



# REFLECTION

# What is a reader method?
# 	A reader method allows you to read and set class data from outside of the class.

# What is a writer method?
# 	A writer method allows you to change class data from outside of the class.

# What do the attr methods do for you?
# 	They're awesome - I no longer have to write clunky methods for input and reassigning variables.

# Should you always use an accessor to cover your bases? Why or Why not?
# 	Not necessarily.
# 	It was brought up in the challenge directions that you may not want your user to be able to read and/or write.
# 	But also, there are plenty of reasons you might want to keep class data in the class.
# 	Or, maybe you want to make changing this data more complex.

# What is confusing to you about these methods?
# 	Not much, but I don't know the full scope of what they can and can't do.