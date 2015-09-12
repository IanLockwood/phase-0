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