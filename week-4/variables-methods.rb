#Full name greeting
puts "What is your first name?"

f_name = gets.chomp

puts "What is your middle name?"

m_name = gets.chomp

puts "What is your last name?"

l_name = gets.chomp

puts "Hello " + f_name + " " + m_name + " " + l_name + ", you are very attractive and intelligent!"

#favorite number
puts "What is your favorite number?"

num = gets.to_i

better_num = num + 1

puts "Hmm, you should change that to " + better_num.to_s + ", that's a better number."


=begin REFLECTION

How do you define a local variable?
	A local variable stores an object and can be reassigned as many times as you like to point to something else.
	Local variables must start with a lowercase letter or underscore (_).

How do you define a method?
	Methods are code blocks that are used to hold one or more "repeatable statements".
	They are useful because once defined, they can perform an operation just by calling them (typing their names).
	Methods should start with a lowercase letter.

What is the difference between a local variable and a method?
	A local variable stores only one object (or array), whereas a method can store many objects and operations and their interactions, and most importantly, takes arguments.

How do you run a ruby program from the command line?
	You type "ruby [file name]" into the command line and hit enter.

How do you run an RSpec file from the command line?
	You type "rspec [file name]" into the command line and hit enter.

What was confusing about this material? What made sense?
	I was really confused about running spec files because the instructions said "type rspec spec_file_name.spec", so I assumed I didn't have the spec files because they end in the extension ".spec".
	I used puts instead of return, that took a while for me to figure out.
	Everything else made sense once I walked through it a few times.

=end
